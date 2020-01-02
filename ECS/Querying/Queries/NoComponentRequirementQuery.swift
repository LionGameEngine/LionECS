//
//  NoComponentRequirementQuery.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct NoComponentRequirementQuery<ComponentManagers: PComponentManagers>: PEntityQuery {
    public typealias Result = EntityQueryResult<()>
    private var exclusionFilters: [PEntityFilter]
    
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        var result: Dictionary<Entity, Result.Components> = [:]
        for entity in try getFilteredEntities(requester: requester) {
            result[entity] = ()
        }
        return Result.init(comp: result)
    }
    
    public func getFilters() -> [PEntityFilter] {
        return exclusionFilters
    }
}
