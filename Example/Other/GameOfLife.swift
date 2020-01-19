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
    
    init(width: Int, height: Int) {
        print("########")
        print("Welcome to Game of Life Example!")
        print("########")
        print("Following options are available:")
        print("1. update - runs single update")
        print("2. exit - exits the game")
        print("########")
        let manager: ComponentManager = ComponentManager()
        world = World<ComponentManager>(componentManager: manager)
        let golStateSystem: GameOfLifeStateSystem = world.getOrCreateSystem()
        let neighboursSystem: NeighboursSystem = world.getOrCreateSystem()
        let _: DeathSystem = world.getOrCreateSystem()
        let _: BornSystem = world.getOrCreateSystem()
        golStateSystem.prepareStateMatrix(width: width, height: height)
        neighboursSystem.createCellsMatrix(width: width, height: height)
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
