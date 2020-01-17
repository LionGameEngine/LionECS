//
//  PEntityQuery.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

// sourcery: AutoMockable
// sourcery: AutoMockableGenerics="<ComponentManagers: PComponentManagers, Result: PEntityQueryResult>"
public protocol PEntityQuery {
    associatedtype ComponentManagers: PComponentManagers
    associatedtype Result
    func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result
    func getFilteredEntities(requester: EntityRequester<ComponentManagers>) throws -> Set<Entity>
    func getFilters() -> [PEntityFilter]
}

public extension PEntityQuery {
    func getFilteredEntities(requester: EntityRequester<ComponentManagers>) throws -> Set<Entity> {
        var finalEntities = requester.getEntityManager().getExistingEntities()
        let filters: [PEntityFilter] = getFilters()
        for filter in filters {
            finalEntities = try filter.filter(requester: requester, entities: finalEntities)
        }
        return finalEntities
    }
}
