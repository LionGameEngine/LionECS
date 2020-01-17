//
//  NaiveQueryResult.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct NaiveQueryResult<Components> {
    typealias Components = Components
    private let components: [Entity: Components]
    
    public init(_ components: [Entity: Components]) {
        self.components = components
    }
    
    public func getComponents() -> [Components] {
        return Array(components.values)
    }
    
    public func getEntityWithComponents() -> [Entity: Components] {
        return components
    }
}
