//
//  ComponentManagersTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import ECS

class ComponentManagersTests: XCTestCase {
    var sut: ComponentManagers!

    override func setUp() {
        sut = ComponentManagers()
    }
    
    func testGetAllManagers_WhenCalledOnJustInitializedObject_ShouldReturnEmptyArray() {
        // then
        XCTAssertEqual(0, sut.getAllManagers().count)
    }
    
    func testGetAllManagers_WhenCalledAfterCreatingManager_ShouldReturnArrayWithThatManager() {
        // when
        let _: ComponentManager<PComponentMock> = sut.getOrCreateManagerOfType(PComponentMock.self)
        // then
        XCTAssertEqual(1, sut.getAllManagers().count)
    }
    
    func testGetExistingManager_WhenManagerDoesNotExist_ShouldThrow() {
        // then
        do {
            let _: ComponentManager<PComponentMock> = try sut.getExistingManagerOfType(PComponentMock.self)
            XCTFail()
        } catch {
        }
    }
    
    func testGetExistingManager_WhenManagerExist_ShouldReturnThatManager() {
        // given
        let manager: ComponentManager<PComponentMock> = sut.getOrCreateManagerOfType(PComponentMock.self)
        // when
        let existingManager: ComponentManager<PComponentMock>? = try? sut.getExistingManagerOfType(PComponentMock.self)
        // then
        XCTAssertTrue(manager === existingManager)
    }
    
    func testGetOrCreateManager_WhenCalled_ShouldReturnManager() {
        // then
        let _: ComponentManager<PComponentMock> = sut.getOrCreateManagerOfType(PComponentMock.self)
    }
}
