//
//  ComponentSystem.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public class ComponentSystem<ComponentManagers: PComponentManagers>: PCreatableSystem {
    weak var world: World<ComponentManagers>!
    weak var entityManager: EntityManager!
    
    public required init(world: World<ComponentManagers>, entityManager: EntityManager) {
        self.world = world
        self.entityManager = entityManager
    }
    
    public func update() {
    }
}
