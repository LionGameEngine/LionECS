//
//  World.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public final class World<ComponentManager: PComponentManager> {
    var systems: [PSystem] = []
    public let entityManager: EntityManager<ComponentManager>
    public let componentManager: ComponentManager
    public let entityRequester: EntityRequester<ComponentManager>
    
    public init(componentManager: ComponentManager) {
        self.componentManager = componentManager
        self.entityManager = EntityManager<ComponentManager>(componentManager: componentManager)
        self.entityRequester = EntityRequester(entityManager: entityManager, componentManager: componentManager)
    }
    
    public func update() {
        for system in systems {
            system.update()
        }
    }
    
    public func getOrCreateSystem<System: PCreatableSystem>() -> System where System.ComponentManager == ComponentManager {
        guard let system: System = getExistingSystem() else {
            let system = System(world: self, entityManager: entityManager, componentManager: componentManager, entityRequester: entityRequester)
            systems.append(system)
            return system
        }
        return system
    }
    
    public func getExistingSystem<System: PSystem>() -> System? {
        return systems.first(where: { $0 is System }) as? System
    }
}
