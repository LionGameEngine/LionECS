//
//  EntityRequester.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

final class EntityRequester<ComponentManagers: PComponentManagers> {
    private let entityManager: EntityManager
    private let componentManagers: ComponentManagers
    
    public init(entityManager: EntityManager, componentManagers: ComponentManagers) {
        self.entityManager = entityManager
        self.componentManagers = componentManagers
    }
    
//    func queryEntities<R: PEntityQueryResult>(query: EntityQuery) -> R {
//        componentManagers.getAllManagers()
//    }
}
