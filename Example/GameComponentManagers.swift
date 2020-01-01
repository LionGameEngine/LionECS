//
//  GameComponentsManager.swift
//  Example
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import ECS

class GameComponentManagers: PComponentManagers {
    let healthComponentManager: ComponentManager<HealthComponent> = ComponentManager()

    public func getAllManagers() -> [PComponentManager] {
        return [healthComponentManager]
    }
}
