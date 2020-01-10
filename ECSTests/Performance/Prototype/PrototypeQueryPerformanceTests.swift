//
//  PrototypeQueryPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 08/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

struct PrototypedQuery<ComponentManagers: PPrototypeComponentManagers, R1: PComponent, R2: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }
    
    func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
        let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
            result[entity] = (r1Components[entity]!, r2Components[entity]!)
        }
        return Result(result)
    }
    
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>()] + exclusionFilters
    }
}

class TestPrototypeQuery: XCTestCase {
    struct Component1: PComponent {
        let x: Int64
        let y: Int64
    }
    struct Component2: PComponent {
        let x: Int64
        let y: Int64
    }
    
    var sut: EntityRequester<PrototypeComponentManagers>!
    let runs: Int = 1
    let entitiesCount: Int = 10000

    override func setUp() {
        sut = EntityRequester<PrototypeComponentManagers>(entityManager: EntityManager(), componentManagers: PrototypeComponentManagers())
        let manager: PrototypeComponentManager = sut.getComponentManagers().getOrCreateManagerOfType(Component1.self)
        for _ in 0...entitiesCount {
            let entity = sut.getEntityManager().createEntity()
            try? manager.addComponent(Component1(x: 100, y: 200), toEntity: entity)
            try? manager.addComponent(Component2(x: 100, y: 200), toEntity: entity)
        }
    }
    
    func testNaiveQueryPerformance() {
        measure {
            for _ in 1...runs {
                try? sut.queryEntities(query: Requires2ComponentNaiveQuery<PrototypeComponentManagers, Component1, Component2>(exclusionFilters: [Excludes<PComponentMock>()]))
            }
        }
    }
    
    func testPrototypeQueryPerformance() {
        measure {
            for _ in 1...runs {
                try? sut.queryEntities(query: PrototypedQuery<PrototypeComponentManagers, Component1, Component2>(exclusionFilters: [Excludes<PComponentMock>()]))
            }
        }
    }

}
