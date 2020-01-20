//
//  EntityRequesterTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityRequesterTests: XCTestCase {
    var sut: EntityRequester<ComponentManager>!

    override func setUp() {
        let manager = ComponentManager()
        sut = EntityRequester(entityManager: EntityManager<ComponentManager>(componentManager: manager), componentManager: manager)
    }
    
    func testGetEntityManager_WhenCreatedWithEntityManager_ShouldReturnThatEntityManager() {
        // given
        let entityManager = EntityManager<ComponentManager>(componentManager: sut.getComponentManager())
        sut = EntityRequester(entityManager: entityManager, componentManager: ComponentManager())
        // then
        XCTAssertTrue(entityManager === sut.getEntityManager())
    }
    
    func testGetComponentManager_WhenCreatedWithEntityManager_ShouldReturnThatComponentManager() {
        // given
        let componentManager = ComponentManager()
        sut = EntityRequester(entityManager: EntityManager<ComponentManager>(componentManager: componentManager), componentManager: componentManager)
        // then
        XCTAssertTrue(componentManager === sut.getComponentManager())
    }
    
    func testQueryEntities_WhenCalledWithQuery_ShouldAskToPerformQueryWithThatRequester() throws {
        // given
        let resultMock = 7
        let queryMock = PEntityQueryMock<ComponentManager, Int>()
        queryMock.resolveWithRequesterReturnValue = resultMock
        // when
        let result = try sut.queryEntities(query: queryMock)
        // then
        XCTAssertTrue(queryMock.resolveWithRequesterCalled)
        XCTAssertTrue(queryMock.resolveWithRequesterReceivedRequester === sut)
        XCTAssertTrue(resultMock == result)
    }    
}
