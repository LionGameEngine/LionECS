//
//  ComponentSystem.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

open class ComponentSystem<ComponentManager: PComponentManager>: PCreatableSystem {
    public private(set) weak var world: World<ComponentManager>!
    public private(set) weak var entityManager: EntityManager<ComponentManager>!
    public private(set) weak var componentManager: ComponentManager!
    public private(set) weak var entityRequester: EntityRequester<ComponentManager>!
    
    public required init(
        world: World<ComponentManager>,
        entityManager: EntityManager<ComponentManager>,
        componentManager: ComponentManager,
        entityRequester: EntityRequester<ComponentManager>) {
        self.world = world
        self.entityManager = entityManager
        self.componentManager = componentManager
        self.entityRequester = entityRequester
    }
    
    open func update() {
    }
}
