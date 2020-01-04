//
//  PrototypeComponentManagers.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

open class PrototypeComponentManagers: PPrototypeComponentManagers {
    private(set) public var prototypeComponentManager: PPrototypeComponentManager!
    
    public init() {
        
    }
    
    public func getAllManagers() -> [PComponentManager] {
        return [prototypeComponentManager].compactMap { $0 }
    }
    
    public func getOrCreateManagerOfType<ComponentManager: PComponentManager, Component: PComponent>(_ type: Component.Type) -> ComponentManager {
        guard let prototypeComponentManager = prototypeComponentManager as? ComponentManager else {
            let prototypeComponentManager = ComponentManager()
            self.prototypeComponentManager = prototypeComponentManager as? PPrototypeComponentManager
            return prototypeComponentManager
        }
        return prototypeComponentManager
    }
        
    public func getExistingManagerOfType<ComponentManager: PComponentManager, Component: PComponent>(_ type: Component.Type) throws -> ComponentManager {
        return prototypeComponentManager as! ComponentManager
    }
        
    public func getExistingManager(withIdentifier identifier: ComponentIdentifier) throws -> PComponentManager {
        return prototypeComponentManager!
    }
}
