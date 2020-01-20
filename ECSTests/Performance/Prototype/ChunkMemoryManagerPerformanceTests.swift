//
//  ChunkMemoryManagerPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 14/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import XCTest
@testable import LionECS

class ChunkMemoryManagerPerformanceTests: XCTestCase {
    private struct Component1: PComponent {
        var x: UInt8
    }
    var sut: ChunkMemoryManager!
    let numberOfEntities = 1000000
    
    override func setUp() {
        let description = ChunkMemoryLayoutDescriptionBuilder().add(Component1.self).build()
        sut = ChunkMemoryManager(memoryLayoutDescription: description)
    }
    
    func testAlloc() {
        var entries: UnsafeMutableRawBufferPointer!
        measure {
            entries = sut.alloc(count: numberOfEntities)
        }
        sut.free(pointer: UnsafeRawBufferPointer(entries))
    }
    
    func testFree() {
        measure {
            let entries: UnsafeMutableRawBufferPointer = sut.alloc(count: numberOfEntities)
            sut.free(pointer: UnsafeRawBufferPointer(entries))
        }
    }
    
    func testClear() {
        let entries: UnsafeMutableRawBufferPointer = sut.alloc(count: numberOfEntities)
        measure {
            sut.clear(pointer: entries)
        }
        sut.free(pointer: UnsafeRawBufferPointer(entries))
    }
    
    func testCopy() {
        let entries: UnsafeMutableRawBufferPointer = sut.alloc(count: numberOfEntities)
        let entries2: UnsafeMutableRawBufferPointer = sut.alloc(count: numberOfEntities)
        measure {
            sut.copy(from: entries, to: entries2)
        }
        sut.free(pointer: UnsafeRawBufferPointer(entries))
        sut.free(pointer: UnsafeRawBufferPointer(entries2))
    }
}
