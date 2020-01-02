//
//  PComponentManagers.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PComponentManagers {
    func getAllManagers() -> [PComponentManager]
    func getOrCreateManagerOfType<ComponentManager: PComponentManager>() -> ComponentManager
    func getExistingManagerOfType<ComponentManager: PComponentManager>() throws -> ComponentManager
}
