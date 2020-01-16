//
//  EntityRequesterTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityRequesterTests: XCTestCase {
    var sut: EntityRequester<ComponentManagers>!

    override func setUp() {
        let managers = ComponentManagers()
        sut = EntityRequester(entityManager: EntityManager<ComponentManagers>(componentManagers: managers), componentManagers: managers)
    }
    
    func testGetEntityManager_WhenCreatedWithEntityManager_ShouldReturnThatEntityManager() {
        // given
        let entityManager = EntityManager<ComponentManagers>(componentManagers: sut.getComponentManagers())
        sut = EntityRequester(entityManager: entityManager, componentManagers: ComponentManagers())
        // then
        XCTAssertTrue(entityManager === sut.getEntityManager())
    }
    
    func testGetComponentManagers_WhenCreatedWithEntityManager_ShouldReturnThatEntityManager() {
        // given
        let componentManagers = ComponentManagers()
        sut = EntityRequester(entityManager: EntityManager<ComponentManagers>(componentManagers: componentManagers), componentManagers: componentManagers)
        // then
        XCTAssertTrue(componentManagers === sut.getComponentManagers())
    }
    
    func testQueryEntities_WhenCalledWithQuery_ShouldAskToPerformQueryWithThatRequester() throws {
        // given
        let resultMock = PEntityQueryResultMock<()>()
        let queryMock = PEntityQueryMock<ComponentManagers, PEntityQueryResultMock<()>>()
        queryMock.resolveWithRequesterReturnValue = resultMock
        // when
        let result = try sut.queryEntities(query: queryMock)
        // then
        XCTAssertTrue(queryMock.resolveWithRequesterCalled)
        XCTAssertTrue(queryMock.resolveWithRequesterReceivedRequester === sut)
        XCTAssertTrue(resultMock === result)
    }    
}
