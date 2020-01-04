//
//  EntityQueryResult.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct EntityQueryResult<Components>: PEntityQueryResult {
    private let comp: [Entity: Components]
    
    public init(_ components: [Entity: Components]) {
        self.comp = components
    }
    
    public func components() -> [Components] {
        return Array(comp.values)
    }
    
    public func entityWithComponents() -> [Entity: Components] {
        return comp
    }
}
