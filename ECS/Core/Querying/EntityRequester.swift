//
//  EntityRequester.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class EntityRequester<ComponentManagers: PComponentManagers> {
    private let entityManager: EntityManager<ComponentManagers>
    private let componentManagers: ComponentManagers
    
    public init(entityManager: EntityManager<ComponentManagers>, componentManagers: ComponentManagers) {
        self.entityManager = entityManager
        self.componentManagers = componentManagers
    }
    
    public func getEntityManager() -> EntityManager<ComponentManagers> {
        return entityManager
    }
    
    public func getComponentManagers() -> ComponentManagers {
        return componentManagers
    }
    
    public func queryEntities<Query: PEntityQuery>(query: Query) throws -> Query.Result where Query.ComponentManagers == ComponentManagers {
        return try query.resolveWith(requester: self)
    }
}
