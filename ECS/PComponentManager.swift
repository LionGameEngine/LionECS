//
//  PComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PComponentManager {
    static var managerIdentifier: ComponentManagerIdentifier { get }
    var managerIdentifier: ComponentManagerIdentifier { get }
    init()
    func getEntities() -> Set<Entity>
    func hasComponent(entity: Entity) -> Bool
    func addComponent<Component: PComponent>(_ component: Component, toEntity entity: Entity) throws
    func getComponent<Component: PComponent>(ofEntity entity: Entity) throws -> Component
    func getEntitiesWithComponents<Component: PComponent>() throws -> Dictionary<Entity, Component>
    func verify<Component: PComponent>(componentType: Component.Type) throws
}
