//
//  PrototypeQueryPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 08/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class TestPrototypeQuery: XCTestCase {
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
    
    var sut: EntityRequester<PrototypeComponentManagers>!
    let runs: Int = 1
    let entitiesCount: Int = 100000

    override func setUp() {
        let managers = PrototypeComponentManagers()
        sut = EntityRequester<PrototypeComponentManagers>(entityManager: EntityManager<PrototypeComponentManagers>(componentManagers: managers), componentManagers: managers)
        let manager: PrototypeComponentManager = sut.getComponentManagers().getOrCreateManagerOfType(Component1.self)
        for _ in 0..<entitiesCount {
            let entity = sut.getEntityManager().createEntity()
            try? manager.addComponent(Component1(x: 100, y: 200), toEntity: entity)
            try? manager.addComponent(Component2(x: 100, y: 200), toEntity: entity)
            try? manager.addComponent(Component3(x: 100, y: 200), toEntity: entity)
        }
    }
    
    func testNaiveQueryPerformance() {
        measure {
            for _ in 1...runs {
                let entities = try? sut.queryEntities(query: Requires3ComponentNaiveQuery<PrototypeComponentManagers, Component1, Component2, Component3>(exclusionFilters: [Excludes<PComponentMock>()]))
            }
        }
    }
        
    func testPrototypeQueryPerformance() {
        measure {
            for _ in 1...runs {
                let query = PrototypeQuery<PrototypeComponentManagers>(filters: [Requires<Component1>(), Requires<Component2>(), Requires<Component3>(), Excludes<PComponentMock>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (entity: Entity, c1: Component1, c2: Component2, c3: Component3) in
                }
            }
        }
    }
    
    func testPrototypeQueryWritePerformance() {
        measure {
            for _ in 1...runs {
                let query = PrototypeQuery<PrototypeComponentManagers>(filters: [Requires<Component1>(), Requires<Component2>(), Requires<Component3>(), Excludes<PComponentMock>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (entity: Entity, w1: inout Component1, c2: Component2, c3: Component3) in
                    w1.x = 100
                    w1.y = c2.y
                }
            }
        }
    }

}
