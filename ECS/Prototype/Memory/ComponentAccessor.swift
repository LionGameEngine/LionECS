//
//  ComponentAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ComponentAccessor: PComponentAccessor {
    private let memoryLayoutDescription: ChunkMemoryLayoutDescription
    public var entries: UnsafeMutableRawBufferPointer
    
    public init(memoryLayoutDescription: ChunkMemoryLayoutDescription, entries: UnsafeMutableRawBufferPointer) {
        self.memoryLayoutDescription = memoryLayoutDescription
        self.entries = entries
    }

    public func access<R1: PComponent>(index: Int) -> R1 {
        return accessMutable(index: index).pointee
    }
    
    public func accessMutable<R1: PComponent>(index: Int) -> UnsafeMutablePointer<R1> {
        return (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize + memoryLayoutDescription.offset(R1.self)).assumingMemoryBound(to: R1.self)
    }
    
    public func clear<R1: PComponent>(_ type: R1.Type, index: Int) {
        let pointer: UnsafeMutablePointer<R1> = accessMutable(index: index)
        UnsafeMutableRawPointer(pointer).initializeMemory(as: UInt8.self, repeating: 0, count: memoryLayoutDescription.size(R1.self))
    }
    
    public func set<R1: PComponent>(component: R1, index: Int) {
        let pointer: UnsafeMutablePointer<R1> = accessMutable(index: index)
        pointer.assign(repeating: component, count: 1)
    }
}
