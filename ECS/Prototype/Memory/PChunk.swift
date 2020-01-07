//
//  PChunk.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 06/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

// sourcery: AutoMockable
public protocol PChunk: class {
    var memoryLayoutDescription: ChunkMemoryLayoutDescription { get }
    func setEntityData(_ entity: Entity, data: [UInt8]) throws
    func getEntityData(_ entity: Entity) throws -> [UInt8]
    func manageEntity(entity: Entity) throws
    func unmanageEntity(_ entity: Entity) throws
}
