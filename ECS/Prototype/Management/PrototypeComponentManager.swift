//
//  PrototypeComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class PrototypeComponentManager: PPrototypeComponentManager {
    private var chunks: [Prototype: Chunk] = [:]
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
                $0.key.componentIdentifiers.contains(Component.componentIdentifier)
            }.flatMap { chunk -> [Entity] in return chunk.value.getEntities().filter { !$0.isNull } }
        )
    }
    
    public func hasComponent<Component>(entity: Entity, component: Component.Type) -> Bool where Component: PComponent {
        return chunks.contains {
            $0.key.componentIdentifiers.contains(Component.componentIdentifier)
             && $0.value.managesEntity(entity: entity)
        }
    }
    
    public func addComponent<Component>(_ component: Component, toEntity entity: Entity) throws where Component: PComponent {
        guard let prototype = chunks.first(where: { $0.value.managesEntity(entity: entity) })?.key else {
            guard let prototype = chunks.first(where: { $0.key.componentIdentifiers == Set([Component.componentIdentifier])})?.key else {
                let newPrototype = PrototypeBuilder()
                    .addComponentType(Component.self)
                    .build()
                let newMemoryLayout = ChunkMemoryLayoutDescriptionBuilder()
                    .add(Component.self)
                    .build()
                chunks[newPrototype] = Chunk(memoryLayoutDescription: newMemoryLayout)
                try chunks[newPrototype]?.manageEntity(entity: entity)
                try chunks[newPrototype]?.setComponents(entity: entity, r1: component)
                return
            }
            try chunks[prototype]?.manageEntity(entity: entity)
            try chunks[prototype]?.setComponents(entity: entity, r1: component)
            return
        }
        let newPrototype = PrototypeBuilder(prototype: prototype)
            .addComponentType(Component.self)
            .build()
        guard let newPrototypeChunk = chunks[newPrototype] else {
            let newMemoryLayout = ChunkMemoryLayoutDescriptionBuilder(baseDescription: chunks[prototype]!.memoryLayoutDescription)
                .add(Component.self)
                .build()
            chunks[newPrototype] = Chunk(memoryLayoutDescription: newMemoryLayout)
            try entityMigrator.migrate(fromChunk: chunks[prototype]!, toChunk: chunks[newPrototype]!, entity: entity)
            try chunks[newPrototype]?.setComponents(entity: entity, r1: component)
            return
        }
        if newPrototypeChunk !== chunks[prototype] {
            try entityMigrator.migrate(fromChunk: chunks[prototype]!, toChunk: newPrototypeChunk, entity: entity)
        }
        try chunks[newPrototype]?.setComponents(entity: entity, r1: component)
        return
    }
    
    public func getComponent<Component>(ofEntity entity: Entity) throws -> Component where Component: PComponent {
        let (component) = try chunks.filter {
                $0.key.componentIdentifiers.contains(Component.componentIdentifier)
                    && $0.value.managesEntity(entity: entity)
            }.flatMap { chunk -> [(Component)] in return try chunk.value.getComponents() }
                .first!
        return component
    }
    
    public func getEntitiesWithComponents<Component>() throws -> [Entity: Component] where Component: PComponent {
        return [Entity: Component](
            uniqueKeysWithValues:
                try chunks.filter {
                    $0.key.componentIdentifiers.contains(Component.componentIdentifier)
                    }.flatMap { chunk -> [(Entity, Component)] in return try chunk.value.getEntitiesWithComponents() }
                    .filter({ !$0.0.isNull })
        )
    }
    
    public func updateComponent<Component>(_ component: Component, ofEntity entity: Entity) throws where Component: PComponent {
        guard let prototypeChunkPair = chunks.first(where: { $0.value.managesEntity(entity: entity) }) else { throw ComponentManagerError.entityMissing }
        guard prototypeChunkPair.key.componentIdentifiers.contains(Component.componentIdentifier) else { throw ComponentManagerError.componentMissing }
        try prototypeChunkPair.value.setComponents(entity: entity, r1: component)
    }
    
    public func removeComponent<Component>(_ componentType: Component.Type, fromEntity entity: Entity) throws where Component: PComponent {
        guard let prototypeChunkPair = chunks.first(where: { $0.value.managesEntity(entity: entity) }) else { throw ComponentManagerError.entityMissing }
        guard prototypeChunkPair.key.componentIdentifiers.contains(Component.componentIdentifier) else { throw ComponentManagerError.componentMissing }
        let newPrototype = PrototypeBuilder(prototype: prototypeChunkPair.key)
            .removeComponentType(Component.self)
            .build()
        let newMemoryDescription = ChunkMemoryLayoutDescriptionBuilder(baseDescription: prototypeChunkPair.value.memoryLayoutDescription)
            .remove(Component.self).build()
        guard let newChunk = chunks[newPrototype] else {
            let newChunk = Chunk(memoryLayoutDescription: newMemoryDescription)
            try entityMigrator.migrate(fromChunk: prototypeChunkPair.value, toChunk: newChunk, entity: entity)
            return
        }
        try entityMigrator.migrate(fromChunk: prototypeChunkPair.value, toChunk: newChunk, entity: entity)
    }

    public func verify<Component>(componentType: Component.Type) throws where Component: PComponent {
        // nothing to do, supports all entities
    }
}
