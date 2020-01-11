//
//  PPrototypeComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PPrototypeComponentManager: PComponentManager {
    var chunks: [Chunk] { get }
    func chunksContainingComponent<Component: PComponent, Component2: PComponent, Component3: PComponent>(type: Component.Type, type2: Component2.Type, type3: Component3.Type) -> [Chunk]
}
