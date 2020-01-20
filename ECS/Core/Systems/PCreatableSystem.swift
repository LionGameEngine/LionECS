//
//  PCreatableSystem.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

// sourcery: AutoMockable
// sourcery: AutoMockableGenerics="<ComponentManager: PComponentManager>"
public protocol PCreatableSystem: PSystem {
    associatedtype ComponentManager: PComponentManager
    init(world: World<ComponentManager>, entityManager: EntityManager<ComponentManager>, componentManager: ComponentManager, entityRequester: EntityRequester<ComponentManager>)
}
