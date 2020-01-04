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
    var entity: Entity
    
    init() {
        print("########")
        print("Welcome to Prototype Game Example!")
        print("########")
        print("Following options are available:")
        print("1. update - runs single update")
        print("2. damage - applies damage component to entity")
        print("3. exit - exits the game")
        print("########")
        let managers: PrototypeComponentManagers = PrototypeComponentManagers()
        let _: PrototypeComponentManager = managers.getOrCreateManagerOfType(HealthComponent.self)
        world = World<PrototypeComponentManagers>(componentManagers: managers)
        damageSystem = world.getOrCreateSystem()
        entity = world.entityManager.createEntity()
        try! world.componentManagers.prototypeComponentManager?.addComponent(HealthComponent(health: 123), toEntity: entity)
        try! world.componentManagers.prototypeComponentManager?.addComponent(DamageComponent(damage: 23), toEntity: entity)
        gameloop {
            world.update()
        }
    }
    
    func gameloop(update: () -> Void) {
        while true {
            let line = readLine(strippingNewline: true)
            if line == "1" {
                update()
            } else if line == "2" {
                try! world.componentManagers.prototypeComponentManager?.addComponent(DamageComponent(damage: 23), toEntity: entity)
            } else if line == "3" {
                break
            }
        }
    }
}
