//
//  NeighboursSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class NeighboursSystem: ComponentSystem<ComponentManager> {
    private var width: Int = 0
    private var height: Int = 0
    private var entitiesMatrix: [[Entity]] = []
    override func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<CellComponent>(), Requires<NeighboursComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach { (entity: Entity, neighbours: inout NeighboursComponent, cell: CellComponent) in
            var aliveCount = 0
            for neighbour in neighboursOf(cell: cell) {
                if componentManager.hasComponent(entity: neighbour, component: AliveComponent.self) {
                    aliveCount += 1
                }
            }
            neighbours.aliveNeighbours = aliveCount
        }
    }
    
    func createCellsMatrix(width: Int, height: Int) {
        self.width = width
        self.height = height
        generateCells()
    }
    
    private func generateCells() {
        let aliveCellPrototype = PrototypeBuilder()
            .add(CellComponent.self)
            .add(NeighboursComponent.self)
            .add(AliveComponent.self)
            .build()
        let deadCellPrototype = PrototypeBuilder()
            .add(CellComponent.self)
            .add(NeighboursComponent.self)
            .build()
        for rowIndex in 0..<height {
            var entitiesRow: [Entity] = []
            for columnIndex in 0..<width {
                let entity = world.entityManager.createEntity(withPrototype: Bool.random() ? aliveCellPrototype : deadCellPrototype)
                try! componentManager.updateComponent(CellComponent(x: columnIndex, y: rowIndex), ofEntity: entity)
                entitiesRow.append(entity)
            }
            entitiesMatrix.append(entitiesRow)
        }
    }
    
    private func neighboursOf(cell: CellComponent) -> [Entity] {
        let validNeighbours: [(x: Int, y: Int)] = [
            (x: cell.x - 1, y: cell.y - 1),
            (x: cell.x, y: cell.y - 1),
            (x: cell.x + 1, y: cell.y - 1),
            (x: cell.x - 1, y: cell.y),
            (x: cell.x + 1, y: cell.y),
            (x: cell.x - 1, y: cell.y + 1),
            (x: cell.x, y: cell.y + 1),
            (x: cell.x + 1, y: cell.y + 1)
            ].filter { $0.x < width && $0.x >= 0 && $0.y < height && $0.y >= 0 }
        return validNeighbours.map { entitiesMatrix[$0.y][$0.x] }
    }
}
