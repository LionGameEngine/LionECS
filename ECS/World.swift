//
//  World.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//

public final class World {
    var systems: [PSystem] = []
    let entityManager: EntityManager = EntityManager()
    
    public init() {
        
    }
    
    public func update() {
        for system in systems {
            system.update()
        }
    }
    
    public func getOrCreateSystem<System: PSystem>() -> System {
        guard let system: System = getExistingSystem() else {
            return System()
        }
        return system
    }
    
    public func getExistingSystem<System: PSystem>() -> System? {
        return systems.first(where: { $0 is System }) as? System
    }
}
