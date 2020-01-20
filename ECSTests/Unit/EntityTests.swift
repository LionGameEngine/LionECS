//
//  ECSTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityTests: XCTestCase {
    func testEntityEquality_WhenBothIdAndVersionMatch_EntitiesShouldBeEqual() {
        // given
        let entity1 = Entity(id: 1, version: 1)
        let entity2 = Entity(id: 1, version: 1)
        // then
        XCTAssertEqual(entity1, entity2)
    }
    
    func testEntityEquality_WhenIdDoesntMatchAndVersionMatch_EntitiesShouldNotBeEqual() {
        // given
        let entity1 = Entity(id: 1, version: 1)
        let entity2 = Entity(id: 2, version: 1)
        // then
        XCTAssertNotEqual(entity1, entity2)
    }
    
    func testEntityEquality_WhenVersionDoesntMatchAndIdMatch_EntitiesShouldNotBeEqual() {
        // given
        let entity1 = Entity(id: 1, version: 1)
        let entity2 = Entity(id: 1, version: 2)
        // then
        XCTAssertNotEqual(entity1, entity2)
    }
    
    func testEntityEquality_WhenBothIdAndVersionDoesntMatch_EntitiesShouldNotBeEqual() {
        // given
        let entity1 = Entity(id: 1, version: 1)
        let entity2 = Entity(id: 2, version: 2)
        // then
        XCTAssertNotEqual(entity1, entity2)
    }
}
