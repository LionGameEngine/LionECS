//
//  Requires6ComponentsQuery.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct Requires6ComponentsQuery<ComponentManagers: PComponentManagers, R0: PComponent, R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R0, R1, R2, R3, R4, R5)>

    private var exclusionFilters: [PEntityFilter]
    
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        let r0Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R0.componentIdentifier)
        let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r4Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R4.componentIdentifier)
        let r5Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R5.componentIdentifier)
        let r0Components: Dictionary<Entity, R0> = try r0Manager.getEntitiesWithComponents()
        let r1Components: Dictionary<Entity, R1> = try r1Manager.getEntitiesWithComponents()
        let r2Components: Dictionary<Entity, R2> = try r2Manager.getEntitiesWithComponents()
        let r3Components: Dictionary<Entity, R3> = try r3Manager.getEntitiesWithComponents()
        let r4Components: Dictionary<Entity, R4> = try r4Manager.getEntitiesWithComponents()
        let r5Components: Dictionary<Entity, R5> = try r5Manager.getEntitiesWithComponents()
        var result: Dictionary<Entity, Result.Components> = [:]
        for entity in try getFilteredEntities(requester: requester) {
            result[entity] = (r0Components[entity]!, r1Components[entity]!, r2Components[entity]!, r3Components[entity]!, r4Components[entity]!, r5Components[entity]!)
        }
        return Result.init(comp: result)
    }
    
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R0>(), Requires<R1>(), Requires<R2>(), Requires<R3>(), Requires<R4>(), Requires<R5>()] + exclusionFilters
    }
}
