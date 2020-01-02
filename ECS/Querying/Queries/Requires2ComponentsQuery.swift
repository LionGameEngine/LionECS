//
//  Requires2ComponentsQuery.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct Requires2ComponentQuery<ComponentManagers: PComponentManagers, R0: PComponent, R1: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R0, R1)>

    private var exclusionFilters: [PEntityFilter]
    
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        let r0Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R0.componentIdentifier)
        let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r0Components: Dictionary<Entity, R0> = try r0Manager.getEntitiesWithComponents()
        let r1Components: Dictionary<Entity, R1> = try r1Manager.getEntitiesWithComponents()
        var result: Dictionary<Entity, Result.Components> = [:]
        for entity in try getFilteredEntities(requester: requester) {
            result[entity] = (r0Components[entity]!, r1Components[entity]!)
        }
        return Result.init(comp: result)
    }
    
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R0>(), Requires<R1>()] + exclusionFilters
    }
}
