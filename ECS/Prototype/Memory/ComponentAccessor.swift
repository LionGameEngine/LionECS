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
    public let offset: Int
    public let size: Int
    
    public init(memoryLayoutDescription: ChunkMemoryLayoutDescription, entries: UnsafeMutableRawBufferPointer, offset: Int, size: Int) {
        self.memoryLayoutDescription = memoryLayoutDescription
        self.entries = entries
        self.offset = offset
        self.size = size
    }

    public func access<R1: PComponent>(index: Int) -> R1 {
        return accessMutable(index: index).pointee
    }
    
    public func accessMutable<R1: PComponent>(index: Int) -> UnsafeMutablePointer<R1> {
        return (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize + offset).assumingMemoryBound(to: R1.self)
    }
    
    public func clear<R1: PComponent>(_ type: R1.Type, index: Int) {
        let pointer: UnsafeMutablePointer<R1> = accessMutable(index: index)
        UnsafeMutableRawPointer(pointer).initializeMemory(as: UInt8.self, repeating: 0, count: size)
    }
    
    public func set<R1: PComponent>(component: R1, index: Int) {
        let pointer: UnsafeMutablePointer<R1> = accessMutable(index: index)
        pointer.assign(repeating: component, count: 1)
    }
}
