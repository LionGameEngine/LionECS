//
//  ComponentManagerTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import XCTest
@testable import LionECS

class ComponentManagerTests: XCTestCase {
    private struct InvalidComponent: PComponent {}
    private struct FooComponent: PComponent, Equatable {
        let x: Int
    }
    
    var sut: ComponentManager!
    
    override func setUp() {
        sut = ComponentManager()
    }
    
    func testHasComponent_WhenCalledForEntityThatDoesntHaveComponent_ShouldReturnFalse() {
        // when
        let hasComponent = sut.hasComponent(entity: Entity(id: 0), component: PComponentMock.self)
        // then
        XCTAssertFalse(hasComponent)
    }
    
    func testHasComponent_WhenCalledForEntityThatHasComponent_ShouldReturnTrue() throws {
        // given
        try sut.addComponent(PComponentMock(), toEntity: Entity(id: 0))
        // when
        let hasComponent = sut.hasComponent(entity: Entity(id: 0), component: PComponentMock.self)
        // then
        XCTAssertTrue(hasComponent)
    }
        
    func testAddComponent_WhenCalledWithValidComponent_ShouldNotThrowError() throws {
        // given
        let entity = Entity(id: 0)
        let component = PComponentMock()
        // then
        XCTAssertNoThrow(try sut.addComponent(component, toEntity: entity))
    }
            
    func testGetComponent_WhenCalledForEntityThatDoesntHaveComponent_ShouldThrowError() throws {
        // given
        let entity = Entity(id: 0)
        // then
        do {
            let _: PComponentMock = try sut.getComponent(ofEntity: entity)
            XCTFail("Should throw error")
        } catch {
            
        }
    }
    
    func testGetComponent_WhenCalledWithInvalidComponentType_ShouldThrowError() throws {
        // given
        let entity = Entity(id: 0)
        try sut.addComponent(PComponentMock(), toEntity: entity)
        // then
        do {
            let _: InvalidComponent = try sut.getComponent(ofEntity: entity)
            XCTFail("Should throw error")
        } catch {
        }
    }
    
    func testGetComponent_WhenCalledForEntityThatHaveComponent_ShouldReturnThatComponent() throws {
        // given
        let entity = Entity(id: 0)
        let component = FooComponent(x: 10)
        try sut.addComponent(component, toEntity: entity)
        // when
        let returnedComponent: FooComponent? = try? sut.getComponent(ofEntity: entity)
        // then
        XCTAssertTrue(component == returnedComponent)
    }
}
