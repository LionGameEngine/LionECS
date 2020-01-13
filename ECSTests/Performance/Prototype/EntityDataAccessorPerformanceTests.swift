//
//  EntityDataAccessorPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 14/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityDataAccessorPerformanceTests: XCTestCase {
    private struct Component1: PComponent {
        let x: Int64
    }
    
    let numberOfEntities = 100000
    var entries: UnsafeMutableRawBufferPointer!
    var memoryManager: PMemoryManager!
    var sut: EntityDataAccessor!
    
    override func setUp() {
        let description = ChunkMemoryLayoutDescriptionBuilder().add(Component1.self).build()
        memoryManager = ChunkMemoryManager(memoryLayoutDescription: description)
        entries = memoryManager.alloc(count: numberOfEntities)
        sut = EntityDataAccessor(memoryLayoutDescription: description, entries: entries)
    }
    
    override func tearDown() {
        memoryManager.free(pointer: entries)
    }
    
    func testAccess() {
        measure {
            for i in 0..<numberOfEntities {
                _ = sut.access(index: i)
            }
        }
    }
        
    func testClear() {
        measure {
            for i in 0..<numberOfEntities {
                sut.clear(index: i)
            }
        }
    }
    
    func testSet() {
        measure {
            for i in 0..<numberOfEntities {
                sut.set(entityData: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], index: i)
            }
        }
    }
}
