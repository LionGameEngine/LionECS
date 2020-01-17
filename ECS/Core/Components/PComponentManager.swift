//
//  PComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PComponentManager {
    init()
    func getEntities<Component: PComponent>(withComponent: Component.Type) -> Set<Entity>
    func hasComponent<Component: PComponent>(entity: Entity, component: Component.Type) -> Bool
    func addComponent<Component: PComponent>(_ component: Component, toEntity entity: Entity) throws
    func getComponent<Component: PComponent>(ofEntity entity: Entity) throws -> Component
    func updateComponent<Component: PComponent>(_ component: Component, ofEntity entity: Entity) throws
    func removeComponent<Component: PComponent>(_ componentType: Component.Type, fromEntity: Entity) throws
    func getEntitiesWithComponents<Component: PComponent>() throws -> [Entity: Component]
    func verify<Component: PComponent>(componentType: Component.Type) throws
}
