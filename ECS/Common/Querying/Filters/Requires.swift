//
//  Requires.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public struct Requires<Component: PComponent>: PEntityFilter, PChunkFilter {
    public var componentIdentifier: ComponentIdentifier {
        return Component.componentIdentifier
    }
    
    public init() {
    }
    
    public func filter(chunk: Chunk) -> Chunk? {
        return chunk.prototype.componentIdentifiers.contains(componentIdentifier) ? chunk : nil
    }
}
