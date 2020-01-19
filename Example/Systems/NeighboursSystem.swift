//
//  NeighboursSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class NeighboursSystem: ComponentSystem<ComponentManager> {
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

    private func neighboursOf(cell: CellComponent) -> [Entity] {
        return []
    }
}
