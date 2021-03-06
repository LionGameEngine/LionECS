//
//  ChunkMemoryLayoutDescriptionBuilder.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public final class ChunkMemoryLayoutDescriptionBuilder {
    private var componentDescriptions: [ComponentIdentifier: ComponentLayoutDescription] = [:]
    private let entitySize = MemoryLayout<Entity>.size
    private var currentSize: Int = MemoryLayout<Entity>.stride
    
    public init() {
        
    }
    
    public init(baseDescription: ChunkMemoryLayoutDescription) {
        componentDescriptions = baseDescription.componentDescriptions
        currentSize = baseDescription.chunkEntrySize
    }
    
    @discardableResult public func add<Component: PComponent>(_ type: Component.Type) -> ChunkMemoryLayoutDescriptionBuilder {
        guard !componentDescriptions.keys.contains(Component.componentIdentifier) else { return self }
        componentDescriptions[Component.componentIdentifier] = ComponentLayoutDescription(offset: currentSize, size: MemoryLayout<Component>.stride)
        currentSize += MemoryLayout<Component>.stride
        return self
    }
    
    @discardableResult public func remove<Component: PComponent>(_ type: Component.Type) -> ChunkMemoryLayoutDescriptionBuilder {
        guard let description = componentDescriptions[Component.componentIdentifier] else { return self }
        let size = description.size
        let offset = description.offset
        componentDescriptions = componentDescriptions.mapValues { (otherDescription) -> ComponentLayoutDescription in
            return otherDescription.offset >= offset + size ? otherDescription.with(offset: otherDescription.offset - size) : otherDescription
        }
        componentDescriptions.removeValue(forKey: Component.componentIdentifier)
        currentSize -= MemoryLayout<Component>.stride
        return self
    }
    
    public func build() -> ChunkMemoryLayoutDescription {
        return ChunkMemoryLayoutDescription(entitySize: entitySize, componentDescriptions: componentDescriptions, chunkEntrySize: currentSize)
    }
}
