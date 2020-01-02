//
//  ComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ComponentManager<Component: PComponent>: PComponentManager {    
    private var entitiesWithComponents: Dictionary<Entity, Component> = [:]
    
    public init() {
        
    }
    
    public func getEntities() -> Set<Entity> {
        return Set(entitiesWithComponents.keys)
    }
    
    public func hasComponent(entity: Entity) -> Bool {
        return entitiesWithComponents[entity] != nil
    }
    
    public func getEntitiesWithComponents<C: PComponent>() throws -> Dictionary<Entity, C> {
        try verify(componentType: C.self)
        return entitiesWithComponents as! Dictionary<Entity, C>;
    }
    
    public func getComponent<C: PComponent>(ofEntity entity: Entity) throws -> C {
        try verify(componentType: C.self)
        guard let component = entitiesWithComponents[entity] else { throw ComponentManagerError.componentMissing }
        return component as! C
    }
    
    public func addComponent<C: PComponent>(_ component: C, toEntity entity: Entity) throws {
        try verify(componentType: C.self)
        entitiesWithComponents[entity] = component as? Component
    }
    
    public func verify<C: PComponent>(componentType: C.Type) throws {
        guard C.Type.self == Component.Type.self else { throw ComponentManagerError.invalidComponentType }
    }
}
