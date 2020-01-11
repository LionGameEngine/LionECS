//
//  NaiveQueryPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 08/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class TestNaiveQuery: XCTestCase {
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
    
    var sut: EntityRequester<ComponentManagers>!
    let runs: Int = 1
    let entitiesCount: Int = 100000

    override func setUp() {
        sut = EntityRequester<ComponentManagers>(entityManager: EntityManager(), componentManagers: ComponentManagers())
        let component1Manager: ComponentManager<Component1> = sut.getComponentManagers().getOrCreateManagerOfType(Component1.self)
        let component2Manager: ComponentManager<Component2> = sut.getComponentManagers().getOrCreateManagerOfType(Component2.self)
        let component3Manager: ComponentManager<Component3> = sut.getComponentManagers().getOrCreateManagerOfType(Component3.self)
        for _ in 0...entitiesCount {
            let entity = sut.getEntityManager().createEntity()
            try? component1Manager.addComponent(Component1(x: 100, y: 200), toEntity: entity)
            try? component2Manager.addComponent(Component2(x: 100, y: 200), toEntity: entity)
            try? component3Manager.addComponent(Component3(x: 100, y: 200), toEntity: entity)
        }
    }
    
    func testNaiveQueryPerformance() {
        measure {
            for _ in 1...runs {
                try? sut.queryEntities(query: Requires3ComponentNaiveQuery<ComponentManagers, Component1, Component2, Component3>(exclusionFilters: [Excludes<PComponentMock>()]))
            }
        }
    }
}
    
