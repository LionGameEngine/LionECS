//
//  EntityQueryResultTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityQueryResultTests: XCTestCase {
    struct FooComponent: PComponent, Equatable {
        let a: Int
    }
    
    func testEntitiesWithComponents_WhenCalled_ShouldReturnTheSameComponentsItWasCreatedWith() throws {
        // given
        let component = FooComponent(a: 123)
        let component2 = FooComponent(a: 100)
        let entititiesWithComponents = [Entity(id: 1): (component)]
        let invalidEntititiesWithComponents = [Entity(id: 1): (component2)]
        let sut: EntityQueryResult<(FooComponent)> = EntityQueryResult(entititiesWithComponents)
        // when
        let returnedEntitiesWithComponents = sut.entityWithComponents()
        // then
        XCTAssertEqual(entititiesWithComponents, returnedEntitiesWithComponents)
        XCTAssertNotEqual(invalidEntititiesWithComponents, returnedEntitiesWithComponents)
    }
    
    func testComponents_WhenCalled_ShouldReturnTheSameComponentsItWasCreatedWith() throws {
        // given
        let component = FooComponent(a: 123)
        let component2 = FooComponent(a: 100)
        let entititiesWithComponents = [Entity(id: 1): (component)]
        let sut: EntityQueryResult<(FooComponent)> = EntityQueryResult(entititiesWithComponents)
        // when
        let returnedEntitiesWithComponents = sut.components()
        // then
        XCTAssertEqual([(component)], returnedEntitiesWithComponents)
        XCTAssertNotEqual([(component2)], returnedEntitiesWithComponents)
    }
}
