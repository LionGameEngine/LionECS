//
//  ComponentAccessorPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 14/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class ComponentAccessorPerformanceTests: XCTestCase {
    private struct Component1: PComponent {
        let x: Int64
    }
    
    let numberOfEntities = 100000
    var entries: UnsafeMutableRawBufferPointer!
    var memoryManager: PMemoryManager!
    var sut: ComponentAccessor!
    
    override func setUp() {
        let description = ChunkMemoryLayoutDescriptionBuilder().add(Component1.self).build()
        memoryManager = ChunkMemoryManager(memoryLayoutDescription: description)
        entries = memoryManager.alloc(count: numberOfEntities)
        sut = ComponentAccessor(memoryLayoutDescription: description, entries: entries, offset: 16, size: 8)
    }
    
    override func tearDown() {
        memoryManager.free(pointer: entries)
    }
    
    func testAccess() {
        measure {
            for i in 0..<numberOfEntities {
                let _ : Component1 = sut.access(index: i)
            }
        }
    }
    
    func testAccessMutable() {
        measure {
            for i in 0..<numberOfEntities {
                let _ : UnsafeMutablePointer<Component1> = sut.accessMutable(index: i)
            }
        }
    }
    
    func testClear() {
        measure {
            for i in 0..<numberOfEntities {
                sut.clear(Component1.self, index: i)
            }
        }
    }
    
    func testSet() {
        measure {
            for i in 0..<numberOfEntities {
                sut.set(component: Component1(x: 10), index: i)
            }
        }
    }
}
