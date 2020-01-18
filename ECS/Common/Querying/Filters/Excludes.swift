//
//  Excludes.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct Excludes<Component: PComponent>: PEntityFilter, PChunkFilter {
    public var componentIdentifier: ComponentIdentifier {
        return Component.componentIdentifier
    }
    
    public init() {
    }
    
    public func filter(chunk: Chunk) -> Chunk? {
        return chunk.prototype.componentIdentifiers.contains(componentIdentifier) ? nil : chunk
    }
}