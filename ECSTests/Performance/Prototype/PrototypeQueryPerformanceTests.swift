//
//  PrototypeQueryPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 08/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

struct PrototypedQuery<ComponentManagers: PPrototypeComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }
    
    func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        let r1Manager = try requester.getComponentManagers().prototypeComponentManager
        guard let chunks = r1Manager?.chunksContainingComponent(type: R1.self, type2: R2.self, type3: R3.self) else { return Result([:])}
        var result: [Entity: Result.Components] = [:]
        for chunk in chunks {
            let entityWithComponents: [(Entity, R1, R2, R3)] = try chunk.getEntitiesWithComponents()
            for t in entityWithComponents {
                result[t.0] = (t.1, t.2, t.3)
            }
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
        
        public static var componentIdentifier: ComponentIdentifier = {
            return String(reflecting: self)
        }()

    }
    struct Component2: PComponent {
        let x: Int64
        let y: Int64
        
        public static var componentIdentifier: ComponentIdentifier = {
            return String(reflecting: self)
        }()
    }
    struct Component3: PComponent {
        let x: Int64
        let y: Int64
        
        public static var componentIdentifier: ComponentIdentifier = {
            return String(reflecting: self)
        }()
    }
    
    var sut: EntityRequester<PrototypeComponentManagers>!
    let runs: Int = 1
    let entitiesCount: Int = 100000

    override func setUp() {
        sut = EntityRequester<PrototypeComponentManagers>(entityManager: EntityManager(), componentManagers: PrototypeComponentManagers())
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
                try? sut.queryEntities(query: PrototypedQuery<PrototypeComponentManagers, Component1, Component2, Component3>(exclusionFilters: [Excludes<PComponentMock>()]))
            }
        }
    }

}
