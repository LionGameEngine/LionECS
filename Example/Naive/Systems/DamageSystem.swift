//
//  DamageSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import LionECS

class DamageSystem: ComponentSystem<GameComponentsManagers> {
    override func update() {
        let query = Requires2ComponentNaiveQuery<ComponentManagers, HealthComponent, DamageComponent>()
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        for result in result.entityWithComponents() {
            var (entity, (health, damage)) = result
            health.health -= damage.damage
            try! componentManagers.healthComponentManager.updateComponent(health, ofEntity: entity)
            print("Entity \(entity) damaged \(damage.damage) remaining health: \(health.health)")
        }
    }
}
