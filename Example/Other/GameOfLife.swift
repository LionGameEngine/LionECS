//
//  Game.swift
//  Example
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class GameOfLife {
    let world: World<ComponentManager>
    
    init() {
        print("########")
        print("Welcome to Game of Life Example!")
        print("########")
        print("Following options are available:")
        print("1. update - runs single update")
        print("2. exit - exits the game")
        print("########")
        let aliveCellPrototype = PrototypeBuilder()
            .add(CellComponent.self)
            .add(NeighboursComponent.self)
            .add(AliveComponent.self)
            .build()
        let deadCellPrototype = PrototypeBuilder()
            .add(CellComponent.self)
            .add(NeighboursComponent.self)
            .add(AliveComponent.self)
            .build()
        let manager: ComponentManager = ComponentManager()
        world = World<ComponentManager>(componentManager: manager)
        let _: NeighboursSystem = world.getOrCreateSystem()
        let _: DeathSystem = world.getOrCreateSystem()
        let _: BornSystem = world.getOrCreateSystem()
        let _: StateRenderSystem = world.getOrCreateSystem()
        world.entityManager.createEntity(withPrototype: aliveCellPrototype)
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
                break
            }
        }
    }
}
