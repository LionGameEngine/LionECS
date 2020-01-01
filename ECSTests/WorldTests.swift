//
//  WorldTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//

import XCTest
@testable import ECS

class WorldTest: XCTestCase {
    var sut: World!
    
    override func setUp() {
        sut = World()
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
        let system = PSystemMock()
        sut.systems.append(system)
        // when
        let returnedSystem: PSystemMock = sut.getOrCreateSystem()
        // then
        XCTAssertTrue(system === returnedSystem)
    }
    
    func testGetOrCreateSystem_WhenCalledAndSystemDoesNotExist_ShouldReturnNewSystem() {
        // given
        // when
        sut.update()
        let returnedSystem: PSystemMock = sut.getOrCreateSystem()
        // then
        XCTAssertFalse(returnedSystem.updateCalled)
    }
}
