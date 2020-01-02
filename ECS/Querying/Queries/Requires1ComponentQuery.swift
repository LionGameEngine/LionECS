//
//  Requires1ComponentQuery.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct Requires1ComponentQuery<ComponentManagers: PComponentManagers, R0: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R0)>
    private var exclusionFilters: [PEntityFilter]
    
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        let r0Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R0.componentIdentifier)
        let r0Components: Dictionary<Entity, R0> = try r0Manager.getEntitiesWithComponents()
        var result: Dictionary<Entity, Result.Components> = [:]
        for entity in try getFilteredEntities(requester: requester) {
            result[entity] = (r0Components[entity]!)
        }
        return Result.init(comp: result)
    }
    
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R0>()] + exclusionFilters
    }
}
