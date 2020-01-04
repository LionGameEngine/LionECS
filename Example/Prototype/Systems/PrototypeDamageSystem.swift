//
//  PrototypeDamageSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class PrototypeDamageSystem: ComponentSystem<PrototypeComponentManagers> {
    override func update() {
        let query = Requires2ComponentNaiveQuery<ComponentManagers, HealthComponent, DamageComponent>(exclusionFilters: [Excludes<DeadComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        for result in result.entityWithComponents() {
            var (entity, (health, damage)) = result
            health.health -= damage.damage
            try! componentManagers.prototypeManager!.addComponent(health, toEntity: entity)
            if health.health <= 0 {
                try! componentManagers.prototypeManager!.addComponent(DeadComponent(), toEntity: entity)
            }
            print("Entity \(entity) damaged \(damage.damage) remaining health: \(health.health)")
        }
    }
}
