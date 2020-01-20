//
//  PChunk.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 06/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

// sourcery: AutoMockable
public protocol PChunk: class {
    var memoryLayoutDescription: ChunkMemoryLayoutDescription { get }
    var memoryManager: PMemoryManager { get }
    func setEntityData(_ entity: Entity, dataPointer: UnsafeRawBufferPointer) throws
    func copyEntityData(_ entity: Entity, into: UnsafeMutableRawBufferPointer) throws
    func manageEntity(entity: Entity) throws
    func unmanageEntity(_ entity: Entity) throws
}
