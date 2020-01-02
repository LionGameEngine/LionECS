//
//  EntityQueryResult.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct EntityQueryResult<Components>: PEntityQueryResult {
    private let comp: Dictionary<Entity, Components>
    
    init(comp: Dictionary<Entity, Components>) {
        self.comp = comp
    }
    
    public func components() -> [Components] {
        return Array(comp.values)
    }
    
    public func entityWithComponents() -> Dictionary<Entity, Components> {
        return comp
    }
}
