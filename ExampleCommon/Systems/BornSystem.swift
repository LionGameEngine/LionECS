//
//  BornSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 19/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class BornSystem: ComponentSystem<ComponentManager> {
    override func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<CellComponent>(), Requires<NeighboursComponent>(), Excludes<AliveComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach { (entity: Entity, neighbours: NeighboursComponent) in
            if neighbours.aliveNeighbours == 3 {
                try! componentManager.addComponent(AliveComponent(), toEntity: entity)
            }
        }
    }
}
