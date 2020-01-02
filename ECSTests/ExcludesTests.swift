//
//  ExcludesTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import ECS

class ExcludesTests: XCTestCase {
    func testFilter_WhenCalledAndEntityHasComponent_ShouldFilterOutThatEntity() throws {
        // given
        let sut = Excludes<PComponentMock>()
        let entityManager = EntityManager()
        let componentManagers = ComponentManagers()
        let entity = entityManager.createEntity()
        let componentManager: ComponentManager<PComponentMock> = componentManagers.getOrCreateManagerOfType(PComponentMock.self)
        try componentManager.addComponent(PComponentMock(), toEntity: entity)
        let requester = EntityRequester<ComponentManagers>(entityManager: entityManager, componentManagers: componentManagers)
        // when
        let filteredEntities = try sut.filter(requester: requester, entities: Set([entity]))
        // then
        XCTAssertEqual(Set([]), filteredEntities)
    }
    
    func testFilter_WhenCalledAndEntityHasComponent_ShouldNotFilterOutTheEntity() throws {
        // given
        let sut = Excludes<PComponentMock>()
        let entityManager = EntityManager()
        let componentManagers = ComponentManagers()
        let entity = entityManager.createEntity()
        let _: ComponentManager<PComponentMock> = componentManagers.getOrCreateManagerOfType(PComponentMock.self)
        let requester = EntityRequester<ComponentManagers>(entityManager: entityManager, componentManagers: componentManagers)
        // when
        let filteredEntities = try sut.filter(requester: requester, entities: Set([entity]))
        // then
        XCTAssertEqual(Set([entity]), filteredEntities)
    }
}
