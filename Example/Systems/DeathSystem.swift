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
        let query = EntityQuery<ComponentManager>(filters: [Requires<HealthComponent>(), Excludes<DeadComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach { (entity: Entity, health: HealthComponent) in
            if health.health <= 0 {
                try? componentManager.addComponent(DeadComponent(), toEntity: entity)
            }
        }
    }
}
