//
//  ChunkEntityMigratorTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 06/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class ChunkEntityMigratorTests: XCTestCase {
    struct FooComponent: PComponent {
        let foo: Int32
    }
    
    struct BarComponent: PComponent {
        let bar: Int64
    }
    
    struct TagComponent: PComponent {
        
    }
    
    struct Tag2Component: PComponent {
        
    }
    
    var sut: ChunkEntityMigrator!
    var fromMock: PChunkMock!
    var toMock: PChunkMock!
    
    override func setUp() {
        sut = ChunkEntityMigrator()
        fromMock = PChunkMock()
        toMock = PChunkMock()
        fromMock.memoryLayoutDescription = ChunkMemoryLayoutDescription(
            entitySize: 16,
            componentDescriptions: [
                FooComponent.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 4),
                TagComponent.componentIdentifier: ComponentLayoutDescription(offset: 20, size: 0),
                BarComponent.componentIdentifier: ComponentLayoutDescription(offset: 20, size: 8),
                Tag2Component.componentIdentifier: ComponentLayoutDescription(offset: 28, size: 0)
            ], chunkEntrySize: 28)
        fromMock.getEntityDataReturnValue = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27]
        toMock.memoryLayoutDescription = ChunkMemoryLayoutDescription(
        entitySize: 16,
        componentDescriptions: [
            BarComponent.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 8),
            FooComponent.componentIdentifier: ComponentLayoutDescription(offset: 24, size: 4),
            TagComponent.componentIdentifier: ComponentLayoutDescription(offset: 24, size: 0),
        ], chunkEntrySize: 28)
    }
    
    func testMigrate_WhenCalledWithEntityThatIsNotManagedBySource_ShouldThrowError() {
        fromMock.getEntityDataClosure = { (Entity) throws -> [UInt8] in throw ChunkError.missingEntity }
        // then
        XCTAssertThrowsError(try sut.migrate(fromChunk: fromMock, toChunk: toMock, entity: Entity(id: 1, version: 1)))
    }
    
    func testMigrate_WhenCalled_ShouldCallUnmanageEntityOnSourceChunk() throws {
        // given
        let entity = Entity(id: 1, version: 1)
        // when
        try sut.migrate(fromChunk: fromMock, toChunk: toMock, entity: entity)
        // then
        XCTAssertTrue(fromMock.unmanageEntityCalled)
        XCTAssertEqual(entity, fromMock.unmanageEntityReceivedEntity)
    }
    
    func testMigrate_WhenCalled_ShouldCalManageEntityOnSourceChunk() throws {
        // given
        let entity = Entity(id: 1, version: 1)
        // when
        try sut.migrate(fromChunk: fromMock, toChunk: toMock, entity: entity)
        // then
        XCTAssertTrue(toMock.manageEntityEntityCalled)
        XCTAssertEqual(entity, toMock.manageEntityEntityReceivedEntity)
    }
    
    func testMigrate_WhenCalled_ShouldTranslateDataToNewLayout() throws {
        // given
        let entity = Entity(id: 1, version: 1)
        // when
        try sut.migrate(fromChunk: fromMock, toChunk: toMock, entity: entity)
        // then
        XCTAssertTrue(toMock.setEntityDataDataCalled)
        XCTAssertEqual(entity, toMock.setEntityDataDataReceivedArguments?.entity)
        XCTAssertEqual([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 20, 21, 22, 23, 24, 25, 26, 27, 16, 17, 18, 19], toMock.setEntityDataDataReceivedArguments?.data)

    }
}

