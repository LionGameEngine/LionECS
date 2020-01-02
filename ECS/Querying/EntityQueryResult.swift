//
//  EntityQueryResult.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct EntityQueryResult<Components>: PEntityQueryResult {
    private let comp: Dictionary<Entity, Components>
    
    public init(_ components: Dictionary<Entity, Components>) {
        self.comp = components
    }
    
    public func components() -> [Components] {
        return Array(comp.values)
    }
    
    public func entityWithComponents() -> Dictionary<Entity, Components> {
        return comp
    }
}
