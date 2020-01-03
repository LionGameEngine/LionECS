//
//  PrototypeBuilder.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public class PrototypeBuilder {
    private var filters: [PEntityFilter]
    
    public init() {
        self.filters = []
    }
    
    public init(prototype: Prototype) {
        self.filters = prototype.filters
    }
    
    public func addComponentType<Component: PComponent>(_ type: Component.Type) -> PrototypeBuilder {
        filters.append(Requires<Component>())
        return self
    }
    
    public func removeComponentType<Component: PComponent>(_ type: Component.Type) -> PrototypeBuilder {
        filters.removeAll(where: { (filter) -> Bool in
            filter.componentIdentifier == Component.componentIdentifier
        })
        return self
    }
    
    public func build() -> Prototype {
        Prototype(filters: filters)
    }
}
