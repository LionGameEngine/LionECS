//
//  ComponentManagerPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 16/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
import LionECS

class ComponentManagerPerformanceTests: XCTestCase {
    struct Component1: PComponent {
        let x: Int64
        let y: Int64
    }
    struct Component2: PComponent {
        let x: Int64
        let y: Int64
    }
    struct Component3: PComponent {
        let x: Int64
        let y: Int64
    }

    let runs: Int = 1
    let entitiesCount: Int = 100000
        
    func testAddingComponentsPerformance() {
        measure {
            for _ in 1...runs {
                let manager = ComponentManager()
                let sut = EntityRequester<ComponentManager>(entityManager: EntityManager<ComponentManager>(componentManager: manager), componentManager: manager)
                for _ in 0...entitiesCount {
                    let entity = sut.getEntityManager().createEntity()
                    try? manager.addComponent(Component1(x: 100, y: 200), toEntity: entity)
                    try? manager.addComponent(Component2(x: 100, y: 200), toEntity: entity)
                    try? manager.addComponent(Component3(x: 100, y: 200), toEntity: entity)
                }
            }
        }
    }
    
    func testCreatingEntityWithPrototype() {
        let prototype = PrototypeBuilder()
            .add(Component1.self)
            .add(Component2.self)
            .add(Component3.self)
            .build()
        measure {
            for _ in 1...runs {
                let manager = ComponentManager()
                let sut = EntityRequester<ComponentManager>(entityManager: EntityManager<ComponentManager>(componentManager: manager), componentManager: manager)
                for _ in 0...entitiesCount {
                    let entity = try! sut.getEntityManager().createEntity(withPrototype: prototype)
                }
            }
        }
    }
}
