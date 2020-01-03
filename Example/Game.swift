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
        try! chunk.createEntity(entity: Entity(id: 1))
        try! chunk.createEntity(entity: Entity(id: 2))
        try! chunk.setComponents(entity: Entity(id: 1), r1: HealthComponent(health: 30))
        try! chunk.setComponents(entity: Entity(id: 2), r1: HealthComponent(health: 100))
        let entitiesWithComponents: [(Entity, HealthComponent)] = try! chunk.getEntitiesWithComponents()
        for var (entity, health) in entitiesWithComponents {
            print("\(entity) \(health)")
        }
        let unsafeEntitiesWithComponents: [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<HealthComponent>)] = try! chunk.getUnsafeEntityWithComponents()
        for var (entity, health) in unsafeEntitiesWithComponents {
            print("\(entity.pointee) \(health.pointee)")
            health.pointee.health = 10
        }
        for var (entity, health) in unsafeEntitiesWithComponents {
            print("\(entity.pointee) \(health.pointee)")
        }
    }
}
