//
//  DamageSystem.swift
//  Example
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import ECS

class DamageSystem: ComponentSystem<GameComponentsManagers> {
    override func update() {
        let query = Requires2ComponentQuery<ComponentManagers, HealthComponent, DamageComponent>()
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        for var entityWithComponents in result.entityWithComponents() {
            entityWithComponents.value.0.health -= entityWithComponents.value.1.damage
            try! world.componentManagers.healthComponentManager.addComponent(entityWithComponents.value.0, toEntity: entityWithComponents.key)
            print("Entity \(entityWithComponents.key) damaged \(entityWithComponents.value.1.damage) remaining health: \(entityWithComponents.value.0.health)")
        }
    }
}
