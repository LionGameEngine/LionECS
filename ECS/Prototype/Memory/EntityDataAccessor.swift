//
//  EntityDataAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public class EntityDataAccessor: PEntityDataAccessor {
    private let memoryLayoutDescription: ChunkMemoryLayoutDescription
    public var entries: UnsafeMutableRawBufferPointer
    
    public init(memoryLayoutDescription: ChunkMemoryLayoutDescription, entries: UnsafeMutableRawBufferPointer) {
        self.memoryLayoutDescription = memoryLayoutDescription
        self.entries = entries
    }
    
    public func access(index: Int) -> [UInt8] {
        var entityData = [UInt8](repeating: 0, count: memoryLayoutDescription.chunkEntrySize)
        entityData.withUnsafeMutableBufferPointer({ (pointer) -> Void in
            var x = 0
            while(x < memoryLayoutDescription.chunkEntrySize) {
                (pointer.baseAddress! + x).pointee = (entries.bindMemory(to: UInt8.self).baseAddress! + index * memoryLayoutDescription.chunkEntrySize + x).pointee
                x += 1
            }
        })
        return entityData
    }
    
    public func set(entityData: [UInt8], index: Int) {
        entityData.withUnsafeBufferPointer({ (data) -> Void in
            ((entries.bindMemory(to: UInt8.self)).baseAddress! + index * memoryLayoutDescription.chunkEntrySize).assign(from: data.baseAddress!, count: entityData.count)
        })
    }
    
    public func clear(index: Int) {
        ((entries.bindMemory(to: UInt8.self)).baseAddress! + index * memoryLayoutDescription.chunkEntrySize).assign(repeating: 0, count: memoryLayoutDescription.chunkEntrySize)
    }

}
