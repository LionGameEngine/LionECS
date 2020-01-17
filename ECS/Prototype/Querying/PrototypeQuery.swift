//
//  PrototypeQuery.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct PrototypeQuery<ComponentManagers: PPrototypeComponentManagers>: PEntityQuery {
    public typealias Result = PrototypeQueryResult
        
    let filters: [PEntityFilter]
    
    init(filters: [PEntityFilter]) {
        self.filters = filters
    }
    
    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        let r1Manager = requester.getComponentManagers().prototypeComponentManager
        guard let chunks = r1Manager?.chunks else { return Result(chunks: []) }
        return Result(chunks: chunks.filter({ shouldIncludeChunk(chunk: $0)}))
    }
    
    public func shouldIncludeChunk(chunk: Chunk) -> Bool {
        for filter in getFilters() {
            guard (filter.filter(chunk: chunk)) != nil else { return false }
        }
        return true
    }
        
    public func getFilters() -> [PEntityFilter] {
        return filters
    }
}
