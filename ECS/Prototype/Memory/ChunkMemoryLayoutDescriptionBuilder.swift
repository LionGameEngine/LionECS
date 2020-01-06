//
//  ChunkMemoryLayoutDescriptionBuilder.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ChunkMemoryLayoutDescriptionBuilder {
    private var componentDescriptions: [ComponentIdentifier: ComponentLayoutDescription] = [:]
    private let entitySize = MemoryLayout<Entity>.size
    private var currentSize: Int = MemoryLayout<Entity>.size
    
    public init() {
        
    }
    
    public init(baseDescription: ChunkMemoryLayoutDescription) {
        componentDescriptions = baseDescription.componentDescriptions
        currentSize = baseDescription.chunkEntrySize
    }
    
    public func add<Component: PComponent>(_ type: Component.Type) -> ChunkMemoryLayoutDescriptionBuilder {
        guard !componentDescriptions.keys.contains(Component.componentIdentifier) else { return self }
        componentDescriptions[Component.componentIdentifier] = ComponentLayoutDescription(offset: currentSize, size: MemoryLayout<Component>.size)
        currentSize += MemoryLayout<Component>.size
        return self
    }
    
    public func remove<Component: PComponent>(_ type: Component.Type) -> ChunkMemoryLayoutDescriptionBuilder {
        guard let description = componentDescriptions[Component.componentIdentifier] else { return self }
        let size = description.size
        let offset = description.offset
        componentDescriptions = componentDescriptions.mapValues { (otherDescription) -> ComponentLayoutDescription in
            return otherDescription.offset >= offset + size ? otherDescription.with(offset: otherDescription.offset - size) : otherDescription
        }
        componentDescriptions.removeValue(forKey: Component.componentIdentifier)
        currentSize -= MemoryLayout<Component>.size
        return self
    }
    
    public func build() -> ChunkMemoryLayoutDescription {
        return ChunkMemoryLayoutDescription(entitySize: entitySize, componentDescriptions: componentDescriptions, chunkEntrySize: currentSize)
    }
}
