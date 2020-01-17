//
//  PChunk.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 06/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

// sourcery: AutoMockable
public protocol PChunk: class, PEntityIterable {
    var memoryLayoutDescription: ChunkMemoryLayoutDescription { get }
    var memoryManager: PMemoryManager { get }
    func setEntityData(_ entity: Entity, data: [UInt8]) throws
    func setEntityData(_ entity: Entity, dataPointer: UnsafeRawBufferPointer) throws
    func getEntityData(_ entity: Entity) throws -> [UInt8]
    func copyEntityData(_ entity: Entity, into: UnsafeMutableRawBufferPointer) throws
    func manageEntity(entity: Entity) throws
    func unmanageEntity(_ entity: Entity) throws
}
