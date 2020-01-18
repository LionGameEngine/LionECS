//
//  EntityQueryPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 08/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityQueryPerformanceTests: XCTestCase {
    struct Component1: PComponent {
        var x: Int64
        var y: Int64
    }
    struct Component2: PComponent {
        let x: Int64
        let y: Int64
    }
    struct Component3: PComponent {
        let x: Int64
        let y: Int64
    }
    
    var sut: EntityRequester<ComponentManager>!
    let runs: Int = 1
    let entitiesCount: Int = 100000

    override func setUp() {
        let manager = ComponentManager()
        sut = EntityRequester<ComponentManager>(entityManager: EntityManager<ComponentManager>(componentManager: manager), componentManager: manager)
        for _ in 0..<entitiesCount {
            let entity = sut.getEntityManager().createEntity()
            try? manager.addComponent(Component1(x: 100, y: 200), toEntity: entity)
            try? manager.addComponent(Component2(x: 100, y: 200), toEntity: entity)
            try? manager.addComponent(Component3(x: 100, y: 200), toEntity: entity)
        }
    }
            
    func testPrototypeQueryPerformance() {
        measure {
            for _ in 1...runs {
                let query = EntityQuery<ComponentManager>(filters: [Requires<Component1>(), Requires<Component2>(), Requires<Component3>(), Excludes<PComponentMock>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (entity: Entity, c1: Component1, c2: Component2, c3: Component3) in
                }
            }
        }
    }
    
    func testPrototypeQueryWritePerformance() {
        measure {
            for _ in 1...runs {
                let query = EntityQuery<ComponentManager>(filters: [Requires<Component1>(), Requires<Component2>(), Requires<Component3>(), Excludes<PComponentMock>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (entity: Entity, w1: inout Component1, c2: Component2, c3: Component3) in
                    w1.x = 100
                    w1.y = c2.y
                }
            }
        }
    }

}
