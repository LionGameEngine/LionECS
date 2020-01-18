//
//  DamageSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class DamageSystem: ComponentSystem<ComponentManager> {
    override func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<DamageComponent>(), Requires<HealthComponent>(), Excludes<DeadComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach { (entity: Entity, health: inout HealthComponent, damage: DamageComponent) in
            defer {
                try? componentManager.removeComponent(DamageComponent.self, fromEntity: entity)
            }
            print("Entity \(entity) health \(health.health)")
            health.health -= damage.damage
            print("Entity \(entity) damaged: \(damage.damage) remaining health: \(health.health)")
            if health.health <= 0 {
                try? componentManager.addComponent(DeadComponent(), toEntity: entity)
            }
        }
    }
}
