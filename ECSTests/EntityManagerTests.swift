//
//  EntityManagerTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import ECS

class EntityManagerTests: XCTestCase {
    var sut: EntityManager!
    
    override func setUp() {
        sut = EntityManager()
    }
    
    func testCreateEntity_WhenCalledOnFreshManager_ShouldCreateEntityWithVersion1AndId0() {
        // when
        let entity = sut.createEntity()
        // then
        XCTAssertEqual(Entity(id: 0, version: 1), entity)
    }
    
    func testCreateEntity_WhenCalled_ShouldCreateNewEntityEachTime() {
        // when
        let entity0 = sut.createEntity()
        let entity1 = sut.createEntity()
        let entity2 = sut.createEntity()
        // then
        XCTAssertEqual(Entity(id: 0, version: 1), entity0)
        XCTAssertEqual(Entity(id: 1, version: 1), entity1)
        XCTAssertEqual(Entity(id: 2, version: 1), entity2)
    }
    
    func testCreateEntity_WhenCalledAndEntityCanBeReused_ShouldReuseThatEntityWithNewVersion() {
        // given
        _ = sut.createEntity()
        var entity1 = sut.createEntity()
        _ = sut.createEntity()
        sut.destroyEntity(entity1)
        // when
        entity1 = sut.createEntity()
        let entity3 = sut.createEntity()
        // then
        XCTAssertEqual(Entity(id: 1, version: 2), entity1)
        XCTAssertEqual(Entity(id: 3, version: 1), entity3)
    }
    
    func testIsExisting_WhenCalledForEntityThatWasNotCreated_ShouldReturnFalse() {
        // when
        let isExisting = sut.isExisting(entity: Entity(id: 0, version: 1))
        // then
        XCTAssertFalse(isExisting)
    }
    
    func testIsExisting_WhenCalledForEntityThatWasCreated_ShouldReturnTrue() {
        // given
        _ = sut.createEntity()
        // when
        let isExisting = sut.isExisting(entity: Entity(id: 0, version: 1))
        // then
        XCTAssertTrue(isExisting)
    }
    
    func testIsExisting_WhenCalledForEntityThatWasDestroyed_ShouldReturnFalse() {
        // given
        let entity = sut.createEntity()
        sut.destroyEntity(entity)
        // when
        let isExisting = sut.isExisting(entity: Entity(id: 0, version: 1))
        // then
        XCTAssertFalse(isExisting)
    }
    
    func testIsExisting_WhenCalledForEntityThatVersionDoesntMatch_ShouldReturnFalse() {
        // given
        _ = sut.createEntity()
        // when
        let isExisting = sut.isExisting(entity: Entity(id: 0, version: 100))
        // then
        XCTAssertFalse(isExisting)
    }
    
    func testDestroyEntity_WhenCalledOnEntityThatDoesNotExist_ShouldNotDestroyIt() {
        // when
        sut.destroyEntity(Entity(id: 10, version: 10))
        let entity = sut.createEntity()
        // then
        XCTAssertEqual(Entity(id: 0, version: 1), entity)
    }
    
    func testGetExistingEntities_WhenCalled_ShouldReturnAllCreatedEntities() {
        // given
        let entity1 = sut.createEntity()
        let entity2 = sut.createEntity()
        // when
        let entities = sut.getExistingEntities()
        // then
        XCTAssertEqual(Set([entity1, entity2]), entities)
    }
}
