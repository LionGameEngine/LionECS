//
//  PEntityQueryResult.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

// sourcery: AutoMockable
// sourcery: AutoMockableGenerics="<Components>"
public protocol PEntityQueryResult {
    associatedtype Components
    
    func components() -> [Components]
    func entityWithComponents() -> Dictionary<Entity, Components>
}
