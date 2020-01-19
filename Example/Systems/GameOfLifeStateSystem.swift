//
//  GameOfLifeStateSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class GameOfLifeStateSystem: ComponentSystem<ComponentManager> {
    var state: GameState!
    
    required init(world: World<ComponentManager>,
                  entityManager: EntityManager<ComponentManager>,
                  componentManager: ComponentManager,
                  entityRequester: EntityRequester<ComponentManager>) {
        super.init(world: world, entityManager: entityManager, componentManager: componentManager, entityRequester: entityRequester)
    }
    
    override func update() {
        updateStateWithAliveCells()
        updateStateWithDeadCells()
        renderState()
    }
    
    func prepareStateMatrix(width: Int, height: Int) {
        var cells: [[Bool]] = []
        for _ in 0..<height {
            var row: [Bool] = []
            for _ in 0..<width {
                row.append(true)
            }
            cells.append(row)
        }
        state = GameState(cells: cells)
    }
    
    private func updateStateWithAliveCells() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<CellComponent>(), Requires<AliveComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach({ (entity: Entity, cellComponent: CellComponent) in
            state.cells[cellComponent.y][cellComponent.x] = true
        })
    }
    
    private func updateStateWithDeadCells() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<CellComponent>(), Excludes<AliveComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach { (entity: Entity, cellComponent: CellComponent) in
            state.cells[cellComponent.y][cellComponent.x] = false
        }
    }
    
    private func renderState() {
        for rows in state.cells {
            for cell in rows {
                if cell == true {
                    print(1, terminator: "")
                } else {
                    print(0, terminator: "")
                }
            }
            print("")
        }
    }
}
