//
//  EntityDataAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import Foundation

public class EntityDataAccessor: PEntityDataAccessor {
    private let memoryLayoutDescription: ChunkMemoryLayoutDescription
    private let entries: UnsafeMutableRawBufferPointer
    
    public init(memoryLayoutDescription: ChunkMemoryLayoutDescription, entries: UnsafeMutableRawBufferPointer) {
        self.memoryLayoutDescription = memoryLayoutDescription
        self.entries = entries
    }
    
    public func copyEntityData(index: Int, into: UnsafeMutableRawBufferPointer) {
        memcpy(into.baseAddress!, entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize, memoryLayoutDescription.chunkEntrySize)
    }
    
    public func set(entityDataPointer: UnsafeRawBufferPointer, index: Int) {
        memcpy(entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize, entityDataPointer.baseAddress!, memoryLayoutDescription.chunkEntrySize)
    }
        
    public func clear(index: Int) {
        ((entries.bindMemory(to: UInt8.self)).baseAddress! + index * memoryLayoutDescription.chunkEntrySize).assign(repeating: 0, count: memoryLayoutDescription.chunkEntrySize)
    }

}
