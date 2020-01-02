//
//  GameComponentsManager.swift
//  Example
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import ECS

class GameComponentsManagers: ComponentManagers {
    private(set) var healthComponentManager: ComponentManager<HealthComponent>!
    override init() {
        super.init()
        healthComponentManager = getOrCreateManagerOfType()
    }
}
