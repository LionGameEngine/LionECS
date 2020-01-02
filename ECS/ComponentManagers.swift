//
//  ComponentManagers.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

open class ComponentManagers: PComponentManagers {
    private var managersByType: [ComponentManagerIdentifier: PComponentManager] = [:]
    
    public init() {
    }

    public func getAllManagers() -> [PComponentManager] {
        return Array(managersByType.values)
    }
    
    public func getOrCreateManagerOfType<ComponentManager: PComponentManager>() -> ComponentManager {
        guard let manager: ComponentManager = try? getExistingManagerOfType() else {
            let manager = ComponentManager()
            managersByType[ComponentManager.managerIdentifier] = manager
            return manager
        }
        return manager
    }
    
    public func getExistingManagerOfType<ComponentManager: PComponentManager>() throws -> ComponentManager {
        guard managersByType.contains(where: { $0.key == ComponentManager.managerIdentifier }) else { throw ComponentManagerError.managerMissing }
        return managersByType[ComponentManager.managerIdentifier] as! ComponentManager
    }
}
