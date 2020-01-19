//
//  StateRenderSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class StateRenderSystem: ComponentSystem<ComponentManager> {
    var state: GameState
    
    required init(world: World<ComponentManager>, entityManager: EntityManager<ComponentManager>, componentManager: ComponentManager, entityRequester: EntityRequester<ComponentManager>) {
        state = GameState(cells: [[true, true, true, true], [true, true, true, true], [true, true, true, true], [true, true, true, true], [true, true, true, true]])
        super.init(world: world, entityManager: entityManager, componentManager: componentManager, entityRequester: entityRequester)
    }
    
    override func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<CellComponent>(), Requires<AliveComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach({ (entity: Entity, cellComponent: CellComponent) in
            state.cells[cellComponent.x][cellComponent.y] = true
        })
        
        let query2 = EntityQuery<ComponentManager>(filters: [Requires<CellComponent>(), Excludes<AliveComponent>()])
        guard let result2 = try? entityRequester.queryEntities(query: query2) else { return }
        result2.forEach { (entity: Entity, cellComponent: CellComponent) in
            state.cells[cellComponent.x][cellComponent.y] = false
        }
        print(state)
    }
}
