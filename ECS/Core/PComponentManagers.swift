//
//  PComponentManagers.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PComponentManagers: class {
    func getAllManagers() -> [PComponentManager]
    func getOrCreateManagerOfType<ComponentManager: PComponentManager, Component: PComponent>(_ type: Component.Type) -> ComponentManager
    func getExistingManagerOfType<ComponentManager: PComponentManager, Component: PComponent>(_ type: Component.Type) throws -> ComponentManager
    func getExistingManager(withIdentifier identifier: ComponentIdentifier) throws -> PComponentManager
}
