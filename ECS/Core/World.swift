//
//  World.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class World<ComponentManagers: PComponentManagers> {
    var systems: [PSystem] = []
    public let entityManager: EntityManager = EntityManager()
    public let componentManagers: ComponentManagers
    public let entityRequester: EntityRequester<ComponentManagers>
    
    public init(componentManagers: ComponentManagers) {
        self.componentManagers = componentManagers
        self.entityRequester = EntityRequester(entityManager: entityManager, componentManagers: componentManagers)
    }
    
    public func update() {
        for system in systems {
            system.update()
        }
    }
    
    public func getOrCreateSystem<System: PCreatableSystem>() -> System where System.ComponentManagers == ComponentManagers {
        guard let system: System = getExistingSystem() else {
            let system = System(world: self, entityManager: entityManager, entityRequester: entityRequester)
            systems.append(system)
            return system
        }
        return system
    }
    
    public func getExistingSystem<System: PSystem>() -> System? {
        return systems.first(where: { $0 is System }) as? System
    }
}
