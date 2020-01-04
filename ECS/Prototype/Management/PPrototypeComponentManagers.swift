//
//  PPrototypeComponentManagers.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PPrototypeComponentManagers: PComponentManagers {
    var prototypeComponentManager: PPrototypeComponentManager! { get }
    func getOrCreateManagerOfType<ComponentManager: PPrototypeComponentManager, Component: PComponent>(_ type: Component.Type) -> ComponentManager
    func getExistingManagerOfType<ComponentManager: PPrototypeComponentManager, Component: PComponent>(_ type: Component.Type) throws -> ComponentManager
}
