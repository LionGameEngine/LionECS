//
//  PrototypeQueryPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 08/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

protocol QueryResult {
    func forEach<R1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (Entity, R1, R2, R3) -> Void)
    func forEach<W1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (Entity, inout W1, R2, R3) -> Void)
}

public struct PrototypeQueryResult: QueryResult, PEntityQueryResult {
    public func components() -> [()] {
        return []
    }
    
    public func entityWithComponents() -> [Entity : ()] {
        return [:]
    }
    
    public typealias Components = ()
    
    let chunks: [Chunk]
    
    init(chunks: [Chunk]) {
        self.chunks = chunks
    }
    
    func forEach<R1, R2, R3>(_ closure: (Entity, R1, R2, R3) -> Void) where R1 : PComponent, R2 : PComponent, R3 : PComponent
    {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    
    func forEach<W1, R2, R3>(_ closure: (Entity, inout W1, R2, R3) -> Void) where W1 : PComponent, R2 : PComponent, R3 : PComponent
    {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
}

struct PrototypeFilter<ComponentManagers: PPrototypeComponentManagers>: PEntityQuery {
    public typealias Result = PrototypeQueryResult
        
    let filters: [PEntityFilter]
    
    init(filters: [PEntityFilter]) {
        self.filters = filters
    }
    
    func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        let r1Manager = requester.getComponentManagers().prototypeComponentManager
        guard let chunks = r1Manager?.chunks else { return Result(chunks: []) }
        return Result(chunks: chunks.filter({ shouldIncludeChunk(chunk: $0)}))
    }
    
    public func shouldIncludeChunk(chunk: Chunk) -> Bool {
        for filter in getFilters() {
            guard (filter.filter(chunk: chunk)) != nil else { return false }
        }
        return true
    }
        
    public func getFilters() -> [PEntityFilter] {
        return filters
    }
}

struct PrototypedQuery<ComponentManagers: PPrototypeComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }
    
    func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        let r1Manager = requester.getComponentManagers().prototypeComponentManager
        guard let chunks = r1Manager?.chunksContainingComponent(type: R1.self, type2: R2.self, type3: R3.self) else { return Result([:])}
        var result: [Entity: Result.Components] = [:]
        for chunk in chunks {
            let entityWithComponents: [(Entity, R1, R2, R3)] = try chunk.getEntitiesWithComponents()
//            let count = entityWithComponents.count
//            entityWithComponents.withUnsafeBufferPointer { (pointer) -> Void in
//                var i = 0
//                while i < count {
//                    let t = pointer[i]
//                    result[t.0] = (t.1, t.2, t.3)
//                    i += 1
//                }
//            }
        }
        return Result(result)
    }
    
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>()] + exclusionFilters
    }
}

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
    
    func testPrototypeBetterQueryPerformance() {
        measure {
            for _ in 1...runs {
                let query = PrototypeFilter<PrototypeComponentManagers>(filters: [Requires<Component1>(), Requires<Component2>(), Requires<Component3>(), Excludes<PComponentMock>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                try? result.forEach { (entity: Entity, c1: Component1, c2: Component2, c3: Component3) in
                }
            }
        }
    }
    
    func testPrototypeBetterQueryWritePerformance() {
        measure {
            for _ in 1...runs {
                let query = PrototypeFilter<PrototypeComponentManagers>(filters: [Requires<Component1>(), Requires<Component2>(), Requires<Component3>(), Excludes<PComponentMock>()])
                guard let result = try? sut.queryEntities(query: query) else { return }
                try? result.forEach { (entity: Entity, w1: inout Component1, c2: Component2, c3: Component3) in
                    w1.x = 100
                    w1.x = w1.y
                }
                try? result.forEach { (entity: Entity, c1: Component1, c2: Component2, c3: Component3) in
                    if(c1.x==100) {
//                        print(entity)
                    }
                    
                }
            }
        }
    }

}
