//
//  ComponentSystem.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

open class ComponentSystem<ComponentManagers: PComponentManagers>: PCreatableSystem {
    public private(set) weak var world: World<ComponentManagers>!
    public private(set) weak var entityManager: EntityManager!
    public private(set) weak var entityRequester: EntityRequester<ComponentManagers>!
    
    public required init(world: World<ComponentManagers>, entityManager: EntityManager, entityRequester: EntityRequester<ComponentManagers>) {
        self.world = world
        self.entityManager = entityManager
        self.entityRequester = entityRequester
    }
    
    open func update() {
    }
}
