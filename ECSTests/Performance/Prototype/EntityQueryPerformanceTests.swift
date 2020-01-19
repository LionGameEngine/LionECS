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
            .add(Component1.self)
            .add(Component2.self)
            .add(Component3.self)
            .add(Component4.self)
            .add(Component5.self)
            .add(Component6.self)
            .add(Component7.self)
            .add(Component8.self)
            .add(Component9.self)
            .add(Component10.self)
            .build()
        let entityManager = EntityManager<ComponentManager>(componentManager: componentManager)
        sut = EntityRequester<ComponentManager>(entityManager: entityManager, componentManager: componentManager)
        for _ in 0..<entitiesCount {
            entityManager.createEntity(withPrototype: prototype)
        }
    }
            
    func testPrototypeQueryPerformance() {
        measure {
            for _ in 1...runs {
                let query = EntityQuery<ComponentManager>(
                    filters: [
                        Requires<Component1>(),
                        Requires<Component2>(),
                        Requires<Component3>(),
                        Requires<Component4>(),
                        Requires<Component5>(),
                        Requires<Component6>(),
                        Requires<Component7>(),
                        Requires<Component8>(),
                        Requires<Component9>(),
                        Requires<Component10>(),
                        Excludes<PComponentMock>()
                    ]
                )
                guard let result = try? sut.queryEntities(query: query) else { return }
                // swiftlint:disable closure_parameter_position
                result.forEach { (
                    _: Entity,
                    _: Component1,
                    _: Component2,
                    _: Component3,
                    _: Component4,
                    _: Component5,
                    _: Component6,
                    _: Component7,
                    _: Component8,
                    _: Component9,
                    _: Component10) in
                }
            }
        }
    }
    
    func testPrototypeQueryReadPerformance() {
        measure {
            for _ in 1...runs {
                let query = EntityQuery<ComponentManager>(filters: [Requires<Component1>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (_: Entity, _: Component1) in
                }
            }
        }
    }
    
    func testPrototypeQueryWritePerformance() {
        measure {
            for _ in 1...runs {
                let query = EntityQuery<ComponentManager>(filters: [Requires<Component1>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                result.forEach { (_: Entity, w1: inout Component1) in
                    w1.x = 100
                }
            }
        }
    }

}
