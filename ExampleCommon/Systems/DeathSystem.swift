//
//  DeathSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 18/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class DeathSystem: ComponentSystem<ComponentManager> {
    override func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<CellComponent>(), Requires<AliveComponent>(), Requires<NeighboursComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach { (entity: Entity, neighbours: NeighboursComponent) in
            if neighbours.aliveNeighbours != 2 && neighbours.aliveNeighbours != 3 {
                try! componentManager.removeComponent(AliveComponent.self, fromEntity: entity)
            }
        }
    }
}
