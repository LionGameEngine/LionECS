//
//  PrototypeBuilder.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public class PrototypeBuilder {
    private var componentIdentifiers: Set<ComponentIdentifier>
    
    public init() {
        self.componentIdentifiers = []
    }
    
    public init(prototype: Prototype) {
        self.componentIdentifiers = prototype.componentIdentifiers
    }
    
    public func addComponentType<Component: PComponent>(_ type: Component.Type) -> PrototypeBuilder {
        guard !componentIdentifiers.contains(Component.componentIdentifier) else { return self }
        componentIdentifiers.insert(Component.componentIdentifier)
        return self
    }
    
    public func removeComponentType<Component: PComponent>(_ type: Component.Type) -> PrototypeBuilder {
        componentIdentifiers.remove(Component.componentIdentifier)
        return self
    }
    
    public func build() -> Prototype {
        Prototype(componentIdentifiers: componentIdentifiers)
    }
}
