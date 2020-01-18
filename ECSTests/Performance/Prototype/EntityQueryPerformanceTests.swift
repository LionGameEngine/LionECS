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
    struct Component4: PComponent {}
    struct Component5: PComponent {}
    struct Component6: PComponent {}
    struct Component7: PComponent {}
    struct Component8: PComponent {}
    struct Component9: PComponent {}
    struct Component10: PComponent {}

    
    var sut: EntityRequester<ComponentManager>!
    let runs: Int = 1
    let entitiesCount: Int = 100000

    override func setUp() {
        super.setUp()
        let componentManager = ComponentManager()
        let prototype = PrototypeBuilder()
            .addComponentType(Component1.self)
            .addComponentType(Component2.self)
            .addComponentType(Component3.self)
            .addComponentType(Component4.self)
            .addComponentType(Component5.self)
            .addComponentType(Component6.self)
            .addComponentType(Component7.self)
            .addComponentType(Component8.self)
            .addComponentType(Component9.self)
            .addComponentType(Component10.self)
            .build()
        let entityManager = EntityManager<ComponentManager>(componentManager: componentManager)
        sut = EntityRequester<ComponentManager>(entityManager: entityManager, componentManager: componentManager)
        for _ in 0..<entitiesCount {
            try? entityManager.createEntity(withPrototype: prototype)
        }
    }
            
    func testPrototypeQueryPerformance() {
        measure {
            for _ in 1...runs {
                let query = EntityQuery<ComponentManager>(filters: [Requires<Component1>(), Requires<Component2>(), Requires<Component3>(), Requires<Component4>(), Requires<Component5>(), Requires<Component6>(), Requires<Component7>(), Requires<Component8>(), Requires<Component9>(), Requires<Component10>(), Excludes<PComponentMock>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (entity: Entity, c1: Component1, c2: Component2, c3: Component3, c4: Component4, c5: Component5, c6: Component6, c7: Component7, c8: Component8, c9: Component9, c10: Component10) in
                }
            }
        }
    }
    
    func testPrototypeQueryReadPerformance() {
        measure {
            for _ in 1...runs {
                let query = EntityQuery<ComponentManager>(filters: [Requires<Component1>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (entity: Entity, r1: Component1) in
                }
            }
        }
    }
    
    func testPrototypeQueryWritePerformance() {
        measure {
            for _ in 1...runs {
                let query = EntityQuery<ComponentManager>(filters: [Requires<Component1>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (entity: Entity, w1: inout Component1) in
                    w1.x = 100
                }
            }
        }
    }

}
