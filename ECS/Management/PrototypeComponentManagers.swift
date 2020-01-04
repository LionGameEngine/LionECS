//
//  PrototypeComponentManagers.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

open class PrototypeComponentManagers: PPrototypeComponentManagers {
    private(set) public var prototypeManager: PPrototypeComponentManager!
    
    public init() {
        
    }
    
    public func getAllManagers() -> [PComponentManager] {
        return [prototypeManager].compactMap { $0 }
    }
    
    public func getOrCreateManagerOfType<ComponentManager, Component>(_ type: Component.Type) -> ComponentManager where ComponentManager : PComponentManager, Component : PComponent {
        guard let prototypeManager = prototypeManager as? ComponentManager else {
            let prototypeManager = ComponentManager()
            self.prototypeManager = prototypeManager as! PPrototypeComponentManager
            return prototypeManager
        }
        return prototypeManager
    }
        
    public func getExistingManagerOfType<ComponentManager, Component>(_ type: Component.Type) throws -> ComponentManager where ComponentManager : PComponentManager, Component : PComponent {
        return prototypeManager as! ComponentManager
    }
        
    public func getExistingManager(withIdentifier identifier: ComponentIdentifier) throws -> PComponentManager {
        return prototypeManager!
    }
}
