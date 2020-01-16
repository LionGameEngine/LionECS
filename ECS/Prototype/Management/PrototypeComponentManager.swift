//
//  PrototypeComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class PrototypeComponentManager: PPrototypeComponentManager {
    public var chunks: [Chunk] = []
    private var entityMigrator: PChunkEntityMigrator
    
    public init() {
        self.entityMigrator = ChunkEntityMigrator()
    }

    public init(entityMigrator: PChunkEntityMigrator) {
        self.entityMigrator = entityMigrator
    }

    public func getEntities<Component>(withComponent: Component.Type) -> Set<Entity> where Component: PComponent {
        return Set<Entity>(
            chunks.filter {
                $0.prototype.componentIdentifiers.contains(Component.componentIdentifier)
            }.flatMap { chunk -> [Entity] in return chunk.getEntities().filter { !$0.isNull } }
        )
    }
    
    public func hasComponent<Component>(entity: Entity, component: Component.Type) -> Bool where Component: PComponent {
        return chunks.contains {
            $0.prototype.componentIdentifiers.contains(Component.componentIdentifier)
             && $0.managesEntity(entity: entity)
        }
    }
    
    public func addComponent<Component>(_ component: Component, toEntity entity: Entity) throws where Component: PComponent {
        guard let chunk = chunkManagingEntity(entity: entity) else {
            let prototype = PrototypeBuilder().addComponentType(Component.self).build()
            let chunk = existingOrNewChunk(forPrototype: prototype)
            try chunk.manageEntity(entity: entity)
            try chunk.setComponents(entity: entity, r1: component)
            return
        }
        guard !chunk.prototype.componentIdentifiers.contains(Component.componentIdentifier) else { throw ComponentManagerError.alreadyHasComponent }
        let newPrototype = PrototypeBuilder(prototype: chunk.prototype)
            .addComponentType(Component.self)
            .build()
        guard let newChunk = existingChunkWithFreeSlot(forPrototype: newPrototype) else {
            let newChunk = createNewChunkByAdding(type: Component.self, toChunk: chunk)
            try entityMigrator.migrate(fromChunk: chunk, toChunk: newChunk, entity: entity)
            chunks.append(newChunk)
            return
        }
        try entityMigrator.migrate(fromChunk: chunk, toChunk: newChunk, entity: entity)
    }
    
    public func getComponent<Component>(ofEntity entity: Entity) throws -> Component where Component: PComponent {
        guard let chunk = chunkManagingEntity(entity: entity) else { throw ComponentManagerError.entityMissing }
        let entitiesWithComponents: [(entity: Entity, component: Component)] = try chunk.getEntitiesWithComponents()
        guard let component = entitiesWithComponents.first(where: { $0.entity == entity } )?.component else { throw ComponentManagerError.componentMissing }
        return component
    }
    
    public func getEntitiesWithComponents<Component>() throws -> [Entity: Component] where Component: PComponent {
        return [Entity: Component](
            uniqueKeysWithValues:
            try chunksContainingComponent(type: Component.self).flatMap { chunk -> [(entity: Entity, component: Component)] in return try chunk.getEntitiesWithComponents() }
                    .filter({ !$0.entity.isNull })
        )
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
            .removeComponentType(Component.self)
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
    
    public func chunksContainingComponent<Component: PComponent, Component2: PComponent, Component3: PComponent>(type: Component.Type, type2: Component2.Type, type3: Component3.Type) -> [Chunk] {
        return chunks.filter { (chunk) -> Bool in
            return chunk.prototype.componentIdentifiers.contains(Component.componentIdentifier) && chunk.prototype.componentIdentifiers.contains(Component2.componentIdentifier) && chunk.prototype.componentIdentifiers.contains(Component3.componentIdentifier)

        }
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
            .addComponentType(type)
        let layoutBuilder = ChunkMemoryLayoutDescriptionBuilder(baseDescription: existingChunk.memoryLayoutDescription)
            .add(type)
        return Chunk(prototype: prototypeBuilder.build())
    }
    
    private func createChunkByRemoving<Component: PComponent>(type: Component.Type, fromChunk existingChunk: Chunk) -> Chunk {
        let prototypeBuilder = PrototypeBuilder(prototype: existingChunk.prototype)
            .removeComponentType(type)
        let layoutBuilder = ChunkMemoryLayoutDescriptionBuilder(baseDescription: existingChunk.memoryLayoutDescription)
            .remove(type)
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
