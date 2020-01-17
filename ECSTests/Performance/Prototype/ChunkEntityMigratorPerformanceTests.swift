//
//  ChunkEntityMigratorPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 14/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class ChunkEntityMigratorPerformanceTests: XCTestCase {
    private struct Component1: PComponent {
        let x: UInt64
    }
    private struct Component2: PComponent {
        let y: UInt64
    }
    var sut: ChunkEntityMigrator!
    var fromChunk: PChunkMock!
    var toChunk: PChunkMock!
    let numberOfEntities: UInt64 = 100000
    
    override func setUp() {
        let fromDescription = ChunkMemoryLayoutDescriptionBuilder().add(Component1.self).add(Component2.self).build()
        let toDescription = ChunkMemoryLayoutDescriptionBuilder().add(Component2.self).add(Component1.self).build()
        sut = ChunkEntityMigrator(shouldFreeMemory: true)
        fromChunk = PChunkMock()
        toChunk = PChunkMock()
        fromChunk.memoryLayoutDescription = fromDescription
        fromChunk.memoryManager = ChunkMemoryManager(memoryLayoutDescription: fromDescription)
        toChunk.memoryLayoutDescription = toDescription
        toChunk.memoryManager = ChunkMemoryManager(memoryLayoutDescription: toDescription)
    }
    
    func testMigrate() {
        measure {
            for i in 0..<numberOfEntities {
                try! sut.migrate(fromChunk: fromChunk, toChunk: toChunk, entity: Entity(id: i))
            }
        }
    }
}
