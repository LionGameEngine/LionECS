//
//  ChunkMemoryLayoutDescriptionBuilder.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ChunkMemoryLayoutDescriptionBuilder {
    var startingOffsets: [ComponentIdentifier: Int] = [:]
    var componentSizes: [ComponentIdentifier: Int] = [:]
    var currentSize: Int = MemoryLayout<Entity>.size
    
    public init() {
        
    }
    
    public init(baseDescription: ChunkMemoryLayoutDescription) {
        startingOffsets = baseDescription.startingOffsets
        componentSizes = baseDescription.componentSizes
    }
    
    public func add<Component: PComponent>(_ type: Component.Type) -> ChunkMemoryLayoutDescriptionBuilder {
        startingOffsets[Component.componentIdentifier] = currentSize
        componentSizes[Component.componentIdentifier] = MemoryLayout<Component>.size
        currentSize += MemoryLayout<Component>.size
        return self
    }
    
    public func build() -> ChunkMemoryLayoutDescription {
        return ChunkMemoryLayoutDescription(startingOffsets: startingOffsets, componentSizes: componentSizes, chunkEntrySize: currentSize)
    }
}
