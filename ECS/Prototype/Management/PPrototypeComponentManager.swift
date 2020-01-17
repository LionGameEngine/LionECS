//
//  PPrototypeComponentManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PPrototypeComponentManager: PComponentManager {
    var chunks: [Chunk] { get }
    func existingOrNewChunk(forPrototype prototype: Prototype) -> Chunk
}
