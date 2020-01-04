//
//  PrototypeGame.swift
//  Example
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import ECS

class PrototypeGame {
    var world: World<PrototypeGameComponentsManagers>
    var damageSystem: PrototypeDamageSystem
    
    init() {
        world = World<PrototypeGameComponentsManagers>(componentManagers: PrototypeGameComponentsManagers())
        damageSystem = world.getOrCreateSystem()
        let entity = world.entityManager.createEntity()
        try! world.componentManagers.prototypeManager?.addComponent(HealthComponent(health: 123), toEntity: entity)
        try! world.componentManagers.prototypeManager?.addComponent(DamageComponent(damage: 23), toEntity: entity)
        world.update()
        world.update()
    }
}
