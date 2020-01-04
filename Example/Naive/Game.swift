//
//  Example.swift
//  Example
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class Game {
    var world: World<GameComponentsManagers>
    var damageSystem: DamageSystem
    
    init() {
        world = World<GameComponentsManagers>(componentManagers: GameComponentsManagers())
        damageSystem = world.getOrCreateSystem()
        let entity = world.entityManager.createEntity()
        try! world.componentManagers.healthComponentManager.addComponent(HealthComponent(health: 123), toEntity: entity)
        try! world.componentManagers.damageComponentsManager.addComponent(DamageComponent(damage: 23), toEntity: entity)
        world.update()
        world.update()
    }
}
