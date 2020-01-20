//
//  Game.swift
//  Example
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import LionECS
import Foundation

class GameOfLife {
    let world: World<ComponentManager>
    let stateSystem: StateSystem
    let info: GameOfLifeInfo
    
    init(info: GameOfLifeInfo) {
        self.info = info
        let manager: ComponentManager = ComponentManager()
        world = World<ComponentManager>(componentManager: manager)
        stateSystem = world.getOrCreateSystem()
        let neighboursSystem: NeighboursSystem = world.getOrCreateSystem()
        let _: DeathSystem = world.getOrCreateSystem()
        let _: BornSystem = world.getOrCreateSystem()
        stateSystem.prepareStateMatrix(width: info.width, height: info.height)
        neighboursSystem.createCellsMatrix(width: info.width, height: info.height)
    }
}
