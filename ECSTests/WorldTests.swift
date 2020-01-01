//
//  WorldTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//

import XCTest
@testable import ECS

class WorldTest: XCTestCase {
    
    func testUpdate_WhenCalled_ShouldUpdateAllSystemsOnce() {
        // given
        let sut = World()
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
}
