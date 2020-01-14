//
//  ChunkMemoryManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ChunkMemoryManager: PMemoryManager {
    private let memoryLayoutDescription: ChunkMemoryLayoutDescription
    
    public init(memoryLayoutDescription: ChunkMemoryLayoutDescription) {
        self.memoryLayoutDescription = memoryLayoutDescription
    }
    
    public func free(pointer: UnsafeRawBufferPointer) {
        pointer.deallocate()
    }
    
    public func copy(from: UnsafeMutableRawBufferPointer, to: UnsafeMutableRawBufferPointer) {
        to.copyMemory(from: UnsafeRawBufferPointer(from))
    }
    
    public func alloc(count: Int) -> UnsafeMutableRawBufferPointer {
        return UnsafeMutableRawBufferPointer.allocate(byteCount: count * self.memoryLayoutDescription.chunkEntrySize, alignment: 0)
    }
    
    public func clear(pointer: UnsafeMutableRawBufferPointer) {
        pointer.initializeMemory(as: UInt8.self, repeating: 0)
    }
}
