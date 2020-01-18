//
//  Game.swift
//  Example
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class Game {
    var world: World<ComponentManager>
    var damageSystem: DamageSystem
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
        let manager: ComponentManager = ComponentManager()
        world = World<ComponentManager>(componentManager: manager)
        damageSystem = world.getOrCreateSystem()
        entity = world.entityManager.createEntity()
        try! world.componentManager.addComponent(HealthComponent(health: 123), toEntity: entity)
        try! world.componentManager.addComponent(DamageComponent(damage: 23), toEntity: entity)
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
                try! world.componentManager.addComponent(DamageComponent(damage: 23), toEntity: entity)
            } else if line == "3" {
                break
            }
        }
    }
}
