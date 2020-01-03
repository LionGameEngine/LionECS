//
//  Example.swift
//  Example
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import ECS

class Game {
    var world: World<GameComponentsManagers>
    var damageSystem: DamageSystem
    
    init() {
        world = World<GameComponentsManagers>(componentManagers: GameComponentsManagers())
        damageSystem = world.getOrCreateSystem()
        let entity = world.entityManager.createEntity()
        try! world.componentManagers.healthComponentManager.addComponent(HealthComponent(health: 123), toEntity: entity)
        try! world.componentManagers.damageComponentsManager.addComponent(DamageComponent(damage: 23), toEntity: entity)
        world.update()
        world.update()
        let layouBuilder = ChunkMemoryLayoutDescriptionBuilder()
        layouBuilder.add(HealthComponent.self)
        let chunk = Chunk(memoryLayoutDescription: layouBuilder.build())
        chunk.createEntity(entity: Entity(id: 1))
        chunk.createEntity(entity: Entity(id: 2))
        try! chunk.setComponent(entity: Entity(id: 1), r1: HealthComponent(health: 30))
        try! chunk.setComponent(entity: Entity(id: 2), r1: HealthComponent(health: 100))
        let entitiesWithComponents: [(Entity, HealthComponent)] = try! chunk.getEntitiesWithComponents()
        for var (entity, health) in entitiesWithComponents {
            print("\(entity) \(health.health)")
        }
    }
}
