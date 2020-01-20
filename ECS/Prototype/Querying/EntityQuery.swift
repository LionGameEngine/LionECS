//
//  EntityQuery.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public struct EntityQuery<ComponentManager: PComponentManager>: PEntityQuery {
    public typealias Result = EntityQueryResult
        
    let filters: [PChunkFilter]
    
    public init(filters: [PChunkFilter]) {
        self.filters = filters
    }
    
    public func resolveWith(requester: EntityRequester<ComponentManager>) throws -> Result {
        let r1Manager = requester.getComponentManager()
        let chunks = r1Manager.chunks
        return Result(chunks: chunks.filter { shouldIncludeChunk(chunk: $0) })
    }
        
    private func shouldIncludeChunk(chunk: Chunk) -> Bool {
        for filter in filters {
            guard (filter.filter(chunk: chunk)) != nil else { return false }
        }
        return true
    }
}
