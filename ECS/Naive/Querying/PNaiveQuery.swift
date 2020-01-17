//
//  PNaiveQuery.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PNaiveQuery: PEntityQuery {
    func getFilteredEntities(requester: EntityRequester<ComponentManagers>) throws -> Set<Entity>
    func getFilters() -> [PEntityFilter]
}

public extension PNaiveQuery {
    func getFilteredEntities(requester: EntityRequester<ComponentManagers>) throws -> Set<Entity> {
        var finalEntities = requester.getEntityManager().getExistingEntities()
        let filters: [PEntityFilter] = getFilters()
        for filter in filters {
            finalEntities = try filter.filter(requester: requester, entities: finalEntities)
        }
        return finalEntities
    }
}
