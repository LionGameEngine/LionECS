//
//  PrototypeGameComponentManagers.swift
//  Example
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import ECS

class PrototypeGameComponentsManagers: PrototypeComponentManagers {
    override init() {
        super.init()
        let _: PrototypeComponentManager = getOrCreateManagerOfType(HealthComponent.self)
    }
}
