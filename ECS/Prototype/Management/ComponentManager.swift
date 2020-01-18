//
//  ComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ComponentManager: PComponentManager {
    public var chunks: [Chunk] = []
    private var entityMigrator: PChunkEntityMigrator
    
    public init() {
        self.entityMigrator = ChunkEntityMigrator(shouldFreeMemory: true)
    }

    public init(entityMigrator: PChunkEntityMigrator) {
        self.entityMigrator = entityMigrator
    }
    
    public func hasComponent<Component>(entity: Entity, component: Component.Type) -> Bool where Component: PComponent {
        return chunks.contains {
            $0.prototype.componentIdentifiers.contains(Component.componentIdentifier)
             && $0.managesEntity(entity: entity)
        }
    }
    
    public func addComponent<Component>(_ component: Component, toEntity entity: Entity) throws where Component: PComponent {
        guard let chunk = chunkManagingEntity(entity: entity) else {
            let prototype = PrototypeBuilder().add(Component.self).build()
            let chunk = existingOrNewChunk(forPrototype: prototype)
            try chunk.manageEntity(entity: entity)
            try chunk.setComponents(entity: entity, r1: component)
            return
        }
        guard !chunk.prototype.componentIdentifiers.contains(Component.componentIdentifier) else { throw ComponentManagerError.alreadyHasComponent }
        let newPrototype = PrototypeBuilder(prototype: chunk.prototype)
            .add(Component.self)
            .build()
        guard let newChunk = existingChunkWithFreeSlot(forPrototype: newPrototype) else {
            let newChunk = createNewChunkByAdding(type: Component.self, toChunk: chunk)
            try entityMigrator.migrate(fromChunk: chunk, toChunk: newChunk, entity: entity)
            chunks.append(newChunk)
            try newChunk.setComponents(entity: entity, r1: component)
            return
        }
        try entityMigrator.migrate(fromChunk: chunk, toChunk: newChunk, entity: entity)
        try newChunk.setComponents(entity: entity, r1: component)
    }
    
    public func getComponent<Component>(ofEntity entity: Entity) throws -> Component where Component: PComponent {
        guard let chunk = chunkManagingEntity(entity: entity) else { throw ComponentManagerError.entityMissing }
        let entitiesWithComponents: [(entity: Entity, component: Component)] = try chunk.getEntitiesWithComponents()
        guard let component = entitiesWithComponents.first(where: { $0.entity == entity } )?.component else { throw ComponentManagerError.componentMissing }
        return component
    }
    
    public func updateComponent<Component>(_ component: Component, ofEntity entity: Entity) throws where Component: PComponent {
        guard let chunk = chunkManagingEntity(entity: entity) else { throw ComponentManagerError.entityMissing }
        guard chunk.prototype.componentIdentifiers.contains(Component.componentIdentifier) else { throw ComponentManagerError.componentMissing }
        try chunk.setComponents(entity: entity, r1: component)
    }
    
    public func removeComponent<Component>(_ componentType: Component.Type, fromEntity entity: Entity) throws where Component: PComponent {
        guard let chunk = chunkManagingEntity(entity: entity) else { throw ComponentManagerError.entityMissing }
        guard chunk.prototype.componentIdentifiers.contains(Component.componentIdentifier) else { throw ComponentManagerError.componentMissing }
        let newPrototype = PrototypeBuilder(prototype: chunk.prototype)
            .remove(Component.self)
            .build()
        guard let newChunk = existingChunkWithFreeSlot(forPrototype: newPrototype) else {
            let newChunk = createChunkByRemoving(type: Component.self, fromChunk: chunk)
            try entityMigrator.migrate(fromChunk: chunk, toChunk: newChunk, entity: entity)
            return
        }
        try entityMigrator.migrate(fromChunk: chunk, toChunk: newChunk, entity: entity)
    }

    public func verify<Component>(componentType: Component.Type) throws where Component: PComponent {
        // nothing to do, supports all entities
    }
        
    public func existingOrNewChunk(forPrototype prototype: Prototype) -> Chunk {
        guard let chunk = existingChunkWithFreeSlot(forPrototype: prototype) else {
            let chunk = Chunk(prototype: prototype)
            chunks.append(chunk)
            return chunk
        }
        return chunk
    }
    
    private func chunksContainingComponent<Component: PComponent>(type: Component.Type) -> [Chunk] {
        return chunks.filter { (chunk) -> Bool in
            return chunk.prototype.componentIdentifiers.contains(Component.componentIdentifier)
        }
    }
        
    private func existingChunkWithFreeSlot(forPrototype prototype: Prototype) -> Chunk? {
        return chunks.withUnsafeBufferPointer { (pointer) -> Chunk? in
            var i = 0
            let count = pointer.count
            while(i < count) {
                if pointer[i].prototype == prototype && !pointer[i].freeIndicies.isEmpty {
                    return pointer[i]
                }
                i += 1
            }
            return nil
        }
    }
    
    private func createNewChunkByAdding<Component: PComponent>(type: Component.Type, toChunk existingChunk: Chunk) -> Chunk {
        let prototypeBuilder = PrototypeBuilder(prototype: existingChunk.prototype)
            .add(type)
        return Chunk(prototype: prototypeBuilder.build())
    }
    
    private func createChunkByRemoving<Component: PComponent>(type: Component.Type, fromChunk existingChunk: Chunk) -> Chunk {
        let prototypeBuilder = PrototypeBuilder(prototype: existingChunk.prototype)
            .add(type)
        return Chunk(prototype: prototypeBuilder.build())
    }
    
    private func chunkManagingEntity(entity: Entity) -> Chunk? {
        return chunks.withUnsafeBufferPointer { (pointer) -> Chunk? in
            var i = 0
            let count = pointer.count
            while(i < count) {
                if pointer[i].managesEntity(entity: entity) {
                    return pointer[i]
                }
                i += 1
            }
            return nil
        }
    }
}
