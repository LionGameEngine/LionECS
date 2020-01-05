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
        guard !componentSizes.keys.contains(Component.componentIdentifier) else { return self }
        startingOffsets[Component.componentIdentifier] = currentSize
        componentSizes[Component.componentIdentifier] = MemoryLayout<Component>.size
        currentSize += MemoryLayout<Component>.size
        return self
    }
    
    public func remove<Component: PComponent>(_ type: Component.Type) -> ChunkMemoryLayoutDescriptionBuilder {
        guard let offset = startingOffsets[Component.componentIdentifier],
            let size = componentSizes[Component.componentIdentifier] else { return self }
        startingOffsets = startingOffsets.mapValues { (otherOffset) -> Int in
            return otherOffset >= offset + size ? otherOffset - size : otherOffset
        }
        startingOffsets.removeValue(forKey: Component.componentIdentifier)
        componentSizes.removeValue(forKey: Component.componentIdentifier)
        currentSize -= MemoryLayout<Component>.size
        return self
    }
    
    public func build() -> ChunkMemoryLayoutDescription {
        return ChunkMemoryLayoutDescription(entitySize: entitySize, startingOffsets: startingOffsets, componentSizes: componentSizes, chunkEntrySize: currentSize)
    }
}
