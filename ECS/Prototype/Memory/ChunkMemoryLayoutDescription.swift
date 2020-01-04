//
//  ChunkMemoryLayoutDescription.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct ChunkMemoryLayoutDescription {
    public let startingOffsets: [ComponentIdentifier: Int]
    public let componentSizes: [ComponentIdentifier: Int]
    public let chunkEntrySize: Int
    public let entitySize: Int
    
    init(entitySize: Int, startingOffsets: [ComponentIdentifier: Int], componentSizes: [ComponentIdentifier: Int], chunkEntrySize: Int) {
        self.entitySize = entitySize
        self.startingOffsets = startingOffsets
        self.componentSizes = componentSizes
        self.chunkEntrySize = chunkEntrySize
    }
    
    public func offset<Component: PComponent>(_ type: Component.Type) -> Int {
        return startingOffsets[Component.componentIdentifier]!
    }
    
    public func size<Component: PComponent>(_ type: Component.Type) -> Int {
        return componentSizes[Component.componentIdentifier]!
    }
    
    public func hasComponent<Component: PComponent>(_ type: Component.Type) -> Bool {
        componentSizes.keys.contains(Component.componentIdentifier)
    }
}
