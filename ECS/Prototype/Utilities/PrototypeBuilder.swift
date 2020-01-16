//
//  PrototypeBuilder.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public class PrototypeBuilder {
    private var layoutBuilder: ChunkMemoryLayoutDescriptionBuilder
    
    public init() {
        self.layoutBuilder = ChunkMemoryLayoutDescriptionBuilder()
    }
    
    public init(prototype: Prototype) {
        self.layoutBuilder = ChunkMemoryLayoutDescriptionBuilder(baseDescription: prototype.layoutDescription)
    }
    
    public func addComponentType<Component: PComponent>(_ type: Component.Type) -> PrototypeBuilder {
        layoutBuilder.add(Component.self)
        return self
    }
    
    public func removeComponentType<Component: PComponent>(_ type: Component.Type) -> PrototypeBuilder {
        layoutBuilder.remove(Component.self)
        return self
    }
    
    public func build() -> Prototype {
        Prototype(layoutDescription: layoutBuilder.build())
    }
}
