//
//  ChunkMemoryLayoutDescriptionBuilder.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ChunkMemoryLayoutDescriptionBuilder {
    private var startingOffsets: [ComponentIdentifier: Int] = [:]
    private var componentSizes: [ComponentIdentifier: Int] = [:]
    private let entitySize = MemoryLayout<Entity>.size
    private var currentSize: Int = MemoryLayout<Entity>.size
    
    public init() {
        
    }
    
    public init(baseDescription: ChunkMemoryLayoutDescription) {
        startingOffsets = baseDescription.startingOffsets
        componentSizes = baseDescription.componentSizes
        currentSize = baseDescription.chunkEntrySize
    }
    
    public func add<Component: PComponent>(_ type: Component.Type) -> ChunkMemoryLayoutDescriptionBuilder {
        startingOffsets[Component.componentIdentifier] = currentSize
        componentSizes[Component.componentIdentifier] = MemoryLayout<Component>.size
        currentSize += MemoryLayout<Component>.size
        return self
    }
    
    public func build() -> ChunkMemoryLayoutDescription {
        return ChunkMemoryLayoutDescription(entitySize: entitySize, startingOffsets: startingOffsets, componentSizes: componentSizes, chunkEntrySize: currentSize)
    }
}
