//
//  EntityManagerPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 08/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityManagerPerformanceTests: XCTestCase {
    public struct Component1: PComponent {
        let x: UInt64
    }
    public struct Component2: PComponent {
        let x: UInt64
    }
    public struct Component3: PComponent {
        let x: UInt64
    }
    
    var sut: EntityManager<ComponentManager>!
    let runs: Int = 100000
    
    override func setUp() {
        let manager = ComponentManager()
        sut = EntityManager<ComponentManager>(componentManager: manager)
    }
    
    func testCreateEntity() {
        measure {
            for _ in 1...runs {
                sut.createEntity()
            }
        }
    }
    
    func testGetExistingEntities() {
        for _ in 1...runs {
            sut.createEntity()
        }
        measure {
            for _ in 1...runs {
                _ = sut.getExistingEntities()
            }
        }
    }
    
    func testIsExisting() {
        for _ in 1...runs {
            sut.createEntity()
        }
        measure {
            for entity in sut.getExistingEntities() {
                _ = sut.isExisting(entity: entity)
            }
        }
    }
    
    func testDestroyEntity() {
        for _ in 1...runs {
            sut.createEntity()
        }
        measure {
            for entity in sut.getExistingEntities() {
                sut.destroyEntity(entity)
            }
        }
    }
    
    func testCreateEntityFromPrototype() {
        let prototype: Prototype = PrototypeBuilder()
            .add(Component1.self)
            .add(Component2.self)
            .add(Component3.self).build()
        measure {
            let manager = ComponentManager()
            let sut: EntityManager<ComponentManager> = EntityManager<ComponentManager>(componentManager: manager)
            for _ in 1...runs {
                try? sut.createEntity(withPrototype: prototype)
            }
        }
    }
}
