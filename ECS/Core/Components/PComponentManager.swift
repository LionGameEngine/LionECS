//
//  PComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PComponentManager: class {
    init()
    var chunks: [Chunk] { get }
    func existingOrNewChunk(forPrototype prototype: Prototype) -> Chunk
    func hasComponent<Component: PComponent>(entity: Entity, component: Component.Type) -> Bool
    func addComponent<Component: PComponent>(_ component: Component, toEntity entity: Entity) throws
    func getComponent<Component: PComponent>(ofEntity entity: Entity) throws -> Component
    func updateComponent<Component: PComponent>(_ component: Component, ofEntity entity: Entity) throws
    func removeComponent<Component: PComponent>(_ componentType: Component.Type, fromEntity: Entity) throws
}
