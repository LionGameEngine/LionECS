//
//  EntityManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class EntityManager<ComponentManagers: PComponentManagers> {
    private var lastEntityId: UInt64 = 0
    private var entities = Set<Entity>()
    private var reuseableEntities = Set<Entity>()
    private let componentManagers: ComponentManagers
    
    public init(componentManagers: ComponentManagers) {
        self.componentManagers = componentManagers
    }
    
    @discardableResult public func createEntity() -> Entity {
        let entity: Entity
        if let reusableEntity = reuseableEntities.first {
            entity = Entity(id: reusableEntity.id, version: reusableEntity.version + 1)
            reuseableEntities.remove(reusableEntity)
        } else {
            entity = Entity(id: lastEntityId, version: 1)
            lastEntityId += 1
        }
        entities.insert(entity)
        return entity
    }
    
    public func destroyEntity(_ entity: Entity) {
        guard isExisting(entity: entity) else { return }
        reuseableEntities.insert(entity)
        entities.remove(entity)
    }
    
    public func isExisting(entity: Entity) -> Bool {
        return entities.contains(entity)
    }
    
    public func getExistingEntities() -> Set<Entity> {
        return entities
    }
}


public extension EntityManager where ComponentManagers: PPrototypeComponentManagers {
    func createEntity(withPrototype prototype: Prototype) throws -> Entity {
        let entity = createEntity()
        let chunk = componentManagers.prototypeComponentManager.existingOrNewChunk(forPrototype: prototype)
        try chunk.manageEntity(entity: entity)
        return entity
    }
}
