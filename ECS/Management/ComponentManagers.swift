//
//  ComponentManagers.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

open class ComponentManagers: PComponentManagers {
    private var managersByType: [ComponentIdentifier: PComponentManager] = [:]
    
    public init() {
    }

    public func getAllManagers() -> [PComponentManager] {
        return Array(managersByType.values)
    }
    
    public func getOrCreateManagerOfType<ComponentManager: PComponentManager, Component: PComponent>(_ type: Component.Type) -> ComponentManager {
        guard let manager: ComponentManager = try? getExistingManagerOfType(type) else {
            let manager = ComponentManager()
            managersByType[Component.componentIdentifier] = manager
            return manager
        }
        return manager
    }
    
    public func getExistingManagerOfType<ComponentManager: PComponentManager, Component: PComponent>(_ type: Component.Type) throws -> ComponentManager {
        return try getExistingManager(withIdentifier: Component.componentIdentifier) as! ComponentManager
    }
    
    public func getExistingManager(withIdentifier identifier: ComponentIdentifier) throws -> PComponentManager {
        guard managersByType.contains(where: { $0.key == identifier }) else { throw ComponentManagerError.managerMissing }
        return managersByType[identifier]!
    }
}
