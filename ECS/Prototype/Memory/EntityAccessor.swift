//
//  EntityAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class EntityAccessor: PEntityAccessor {
    private let memoryLayoutDescription: ChunkMemoryLayoutDescription
    private let entries: UnsafeMutableRawBufferPointer
    
    public init(memoryLayoutDescription: ChunkMemoryLayoutDescription, entries: UnsafeMutableRawBufferPointer) {
        self.memoryLayoutDescription = memoryLayoutDescription
        self.entries = entries
    }

    public func access(index: Int) -> Entity {
        return accessMutable(index: index).pointee
    }
    
    public func accessMutable(index: Int) -> UnsafeMutablePointer<Entity> {
        return (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize).assumingMemoryBound(to: Entity.self)
    }
    
    public func clear(index: Int) {
        UnsafeMutableRawPointer(accessMutable(index: index)).initializeMemory(as: UInt8.self, repeating: 0, count: memoryLayoutDescription.entitySize)
    }
    
    public func set(entity: Entity, index: Int) {
        accessMutable(index: index).assign(repeating: entity, count: 1)
    }
}
