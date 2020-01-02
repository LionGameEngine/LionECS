//
//  CreatableSystem.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

// sourcery: AutoMockable
// sourcery: AutoMockableGenerics="<ComponentManagers: PComponentManagers>"
public protocol PCreatableSystem: PSystem {
    associatedtype ComponentManagers: PComponentManagers
    init(world: World<ComponentManagers>, entityManager: EntityManager, componentManagers: ComponentManagers, entityRequester: EntityRequester<ComponentManagers>)
}
