//
//  World.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//

public final class World<ComponentManagers: PComponentManagers> {
    var systems: [PSystem] = []
    let entityManager: EntityManager = EntityManager()
    let componentManagers: ComponentManagers
    
    public init(componentManagers: ComponentManagers) {
        self.componentManagers = componentManagers
    }
    
    public func update() {
        for system in systems {
            system.update()
        }
    }
    
    public func getOrCreateSystem<System: PCreatableSystem>() -> System where System.ComponentManagers == ComponentManagers {
        guard let system: System = getExistingSystem() else {
            let system = System(world: self, entityManager: entityManager)
            systems.append(system)
            return system
        }
        return system
    }
    
    public func getExistingSystem<System: PSystem>() -> System? {
        return systems.first(where: { $0 is System }) as? System
    }
}
