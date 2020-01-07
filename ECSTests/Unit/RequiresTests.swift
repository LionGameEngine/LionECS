//
//  RequiresTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class RequiresTests: XCTestCase {
    func testFilter_WhenCalledAndEntityHasComponent_ShouldNotFilterThatEntity() throws {
        // given
        let sut = Requires<PComponentMock>()
        let entityManager = EntityManager()
        let componentManagers = ComponentManagers()
        let entity = entityManager.createEntity()
        let componentManager: ComponentManager<PComponentMock> = componentManagers.getOrCreateManagerOfType(PComponentMock.self)
        try componentManager.addComponent(PComponentMock(), toEntity: entity)
        let requester = EntityRequester<ComponentManagers>(entityManager: entityManager, componentManagers: componentManagers)
        // when
        let filteredEntities = try sut.filter(requester: requester, entities: Set([entity]))
        // then
        XCTAssertEqual(Set([entity]), filteredEntities)
    }
    
    func testFilter_WhenCalledAndEntityHasComponent_ShouldFilterOutTheEntity() throws {
        // given
        let sut = Requires<PComponentMock>()
        let entityManager = EntityManager()
        let componentManagers = ComponentManagers()
        let entity = entityManager.createEntity()
        let _: ComponentManager<PComponentMock> = componentManagers.getOrCreateManagerOfType(PComponentMock.self)
        let requester = EntityRequester<ComponentManagers>(entityManager: entityManager, componentManagers: componentManagers)
        // when
        let filteredEntities = try sut.filter(requester: requester, entities: Set([entity]))
        // then
        XCTAssertEqual(Set([]), filteredEntities)
    }
}
