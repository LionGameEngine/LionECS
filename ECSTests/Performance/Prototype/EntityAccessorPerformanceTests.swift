//
//  EntityAccessorPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 13/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityAccessorPerformanceTests: XCTestCase {
    private struct Component1: PComponent {
        let x: Int64
    }
    
    let numberOfEntities = 100000
    var entries: UnsafeMutableRawBufferPointer!
    var memoryManager: PMemoryManager!
    var sut: EntityAccessor!
    
    override func setUp() {
        let description = ChunkMemoryLayoutDescriptionBuilder().add(Component1.self).build()
        memoryManager = ChunkMemoryManager(memoryLayoutDescription: description)
        entries = memoryManager.alloc(count: numberOfEntities)
        sut = EntityAccessor(memoryLayoutDescription: description, entries: entries)
    }
    
    override func tearDown() {
        memoryManager.free(pointer: UnsafeRawBufferPointer(entries))
    }
    
    func testAccess() {
        measure {
            for i in 0..<numberOfEntities {
                _ = sut.access(index: i)
            }
        }
    }
    
    func testAccessMutable() {
        measure {
            for i in 0..<numberOfEntities {
                _ = sut.accessMutable(index: i)
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
                sut.set(entity: Entity(id: 10, version: 10), index: i)
            }
        }
    }
}
