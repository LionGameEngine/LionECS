//
//  ManagedMemoryBlob.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

final class ManagedMemoryBlob {
    let blobItemsCount: Int = 1024
    let pointer: UnsafeMutableRawBufferPointer
    private let memoryManager: PMemoryManager
    
    init(memoryManager: PMemoryManager) {
        self.memoryManager = memoryManager
        pointer = memoryManager.alloc(count: blobItemsCount)
        memoryManager.clear(pointer: pointer)
    }
    
    deinit {
        memoryManager.free(pointer: UnsafeRawBufferPointer(pointer))
    }
}
