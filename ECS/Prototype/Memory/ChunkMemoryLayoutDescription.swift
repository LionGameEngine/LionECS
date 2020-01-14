//
//  ChunkMemoryLayoutDescription.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct ChunkMemoryLayoutDescription: Equatable {
    public let componentTypes: Set<ComponentIdentifier>
    public let componentDescriptions: [ComponentIdentifier: ComponentLayoutDescription]
    public let chunkEntrySize: Int
    public let entitySize: Int
    
    init(entitySize: Int, componentDescriptions: [ComponentIdentifier: ComponentLayoutDescription], chunkEntrySize: Int) {
        self.entitySize = entitySize
        self.componentDescriptions = componentDescriptions
        self.componentTypes = Set(componentDescriptions.keys)
        self.chunkEntrySize = chunkEntrySize
    }
    
    public func offset<Component: PComponent>(_ type: Component.Type) -> Int {
        return offset(componentIdentifier: Component.componentIdentifier)!
    }
    
    public func offset(componentIdentifier: ComponentIdentifier) -> Int? {
        return componentDescriptions[componentIdentifier]?.offset
    }
    
    public func size<Component: PComponent>(_ type: Component.Type) -> Int {
        return size(componentIdentifier: Component.componentIdentifier)!
    }
    
    public func size(componentIdentifier: ComponentIdentifier) -> Int? {
        return componentDescriptions[componentIdentifier]?.size
    }
    
    public func hasComponent<Component: PComponent>(_ type: Component.Type) -> Bool {
        componentDescriptions[Component.componentIdentifier] != nil
    }
    
    public func getComponentTypes() -> Set<ComponentIdentifier> {
        return componentTypes
    }
}
