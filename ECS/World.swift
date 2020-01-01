//
//  World.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//

public final class World {
    var systems: [PSystem] = []
    
    public init() {
        
    }
    
    public func update() {
        for system in systems {
            system.update()
        }
    }
}
