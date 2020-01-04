//
//  PrototypeGame.swift
//  Example
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class PrototypeGame {
    var world: World<PrototypeComponentManagers>
    var damageSystem: PrototypeDamageSystem
    
    init() {
        let managers: PrototypeComponentManagers = PrototypeComponentManagers()
        let _: PrototypeComponentManager = managers.getOrCreateManagerOfType(HealthComponent.self)
        world = World<PrototypeComponentManagers>(componentManagers: managers)
        damageSystem = world.getOrCreateSystem()
        let entity = world.entityManager.createEntity()
        try! world.componentManagers.prototypeManager?.addComponent(HealthComponent(health: 123), toEntity: entity)
        try! world.componentManagers.prototypeManager?.addComponent(DamageComponent(damage: 23), toEntity: entity)
        gameloop {
            world.update()
        }
    }
    
    func gameloop(update: () -> Void) {
        while true {
            update()
        }
    }
}
