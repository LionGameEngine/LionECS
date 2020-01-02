//
//  WorldTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import ECS

class WorldTest: XCTestCase {
    class PComponentManagersMock: ComponentManagers { }
    
    var sut: World<PComponentManagersMock>!
    
    override func setUp() {
        sut = World<PComponentManagersMock>(componentManagers: PComponentManagersMock())
    }
    
    func testUpdate_WhenCalled_ShouldUpdateAllSystemsOnce() {
        // given
        let sys1 = PSystemMock()
        let sys2 = PSystemMock()
        sut.systems.append(sys1)
        sut.systems.append(sys2)
        // when
        sut.update()
        // then
        XCTAssertEqual(1, sys1.updateCallsCount)
        XCTAssertEqual(1, sys2.updateCallsCount)
    }
    
    func testGetOrCreateSystem_WhenCalledAndSystemExists_ShouldReturnThatSystem() {
        // given
        let system = PCreatableSystemMock(world: sut, entityManager: sut.entityManager)
        sut.systems.append(system)
        // when
        let returnedSystem: PCreatableSystemMock = sut.getOrCreateSystem()
        // then
        XCTAssertTrue(system === returnedSystem)
    }
    
    func testGetOrCreateSystem_WhenCalledAndSystemDoesNotExist_ShouldReturnNewSystem() {
        // when
        sut.update()
        let returnedSystem: PCreatableSystemMock = sut.getOrCreateSystem()
        // then
        XCTAssertFalse(returnedSystem.updateCalled)
    }
    
    func testGetOrCreateSystem_WhenCalledAndSystemDoesNotExist_ShouldReturnThatSystemInSubsequentCalls() {
        // when
        sut.update()
        let returnedSystem1: PCreatableSystemMock = sut.getOrCreateSystem()
        let returnedSystem2: PCreatableSystemMock = sut.getOrCreateSystem()
        // then
        XCTAssertTrue(returnedSystem1 === returnedSystem2)
    }
    
    func testGetExistingSystem_WhenCalledAndSystemExists_ShouldReturnThatSystem() {
        // given
        let system = PSystemMock()
        sut.systems.append(system)
        // when
        let returnedSystem: PSystemMock? = sut.getExistingSystem()
        // then
        XCTAssertTrue(system === returnedSystem)
    }
    
    func testGetExistingSystem_WhenCalledAndSystemDoesNotExist_ShouldReturnNil() {
        // when
        let returnedSystem: PSystemMock? = sut.getExistingSystem()
        // then
        XCTAssertNil(returnedSystem)
    }
}
