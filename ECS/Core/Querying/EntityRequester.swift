//
//  EntityRequester.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class EntityRequester<ComponentManager: PComponentManager> {
    private let entityManager: EntityManager<ComponentManager>
    private let componentManager: ComponentManager
    
    public init(entityManager: EntityManager<ComponentManager>, componentManager: ComponentManager) {
        self.entityManager = entityManager
        self.componentManager = componentManager
    }
    
    public func getEntityManager() -> EntityManager<ComponentManager> {
        return entityManager
    }
    
    public func getComponentManager() -> ComponentManager {
        return componentManager
    }
    
    public func queryEntities<Query: PEntityQuery>(query: Query) throws -> Query.Result where Query.ComponentManager == ComponentManager {
        return try query.resolveWith(requester: self)
    }
}
