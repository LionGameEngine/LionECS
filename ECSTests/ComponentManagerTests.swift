//
//  ComponentManagerTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import ECS

class ComponentManagerTests: XCTestCase {
    private struct InvalidComponent: PComponent {
    }
    
    var sut: ComponentManager<PComponentMock>!
    
    override func setUp() {
        sut = ComponentManager()
    }
    
    func testHasComponent_WhenCalledForEntityThatDoesntHaveComponent_ShouldReturnFalse() {
        // when
        let hasComponent = sut.hasComponent(entity: Entity(id: 0))
        // then
        XCTAssertFalse(hasComponent)
    }
    
    func testHasComponent_WhenCalledForEntityThatHasComponent_ShouldReturnTrue() throws {
        // given
        try sut.addComponent(PComponentMock(), toEntity: Entity(id: 0))
        // when
        let hasComponent = sut.hasComponent(entity: Entity(id: 0))
        // then
        XCTAssertTrue(hasComponent)
    }
    
    func testVerify_WhenCalledWithValidComponentType_ShouldNotThrowError() throws {
        // then
        XCTAssertNoThrow(try sut.verify(componentType: PComponentMock.self))
    }
    
    func testVerify_WhenCalledWithInvalidComponentType_ShouldThrowError() throws {
        // then
        XCTAssertThrowsError(try sut.verify(componentType: InvalidComponent.self))
    }
    
    func testAddComponent_WhenCalledWithValidComponent_ShouldNotThrowError() throws {
        // given
        let entity = Entity(id: 0)
        let component = PComponentMock()
        // then
        XCTAssertNoThrow(try sut.addComponent(component, toEntity: entity))
    }
    
    func testAddComponent_WhenCalledWithInvalidComponent_ShouldThrowError() throws {
        // given
        let entity = Entity(id: 0)
        let component = InvalidComponent()
        // then
        XCTAssertThrowsError(try sut.addComponent(component, toEntity: entity))
    }
    
    func testGetEntities_WhenComponentAddedToEntity_ShouldReturnThatEntityInSet() throws {
        // given
        let entity = Entity(id: 0)
        let component = PComponentMock()
        // when
        try sut.addComponent(component, toEntity: entity)
        // then
        XCTAssertEqual(Set([entity]), sut.getEntities())
    }
    
    func testGetComponent_WhenCalledForEntityThatDoesntHaveComponent_ShouldThrowError() throws {
        // given
        let entity = Entity(id: 0)
        // then
        do {
            let _: PComponentMock = try sut.getComponent(ofEntity: entity)
            XCTFail(description: "Should throw error")
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
            XCTFail(description: "Should throw error)
        } catch {
        }
    }
    
    func testGetComponent_WhenCalledForEntityThatHaveComponent_ShouldReturnThatComponent() throws {
        // given
        let entity = Entity(id: 0)
        let component = PComponentMock()
        try sut.addComponent(component, toEntity: entity)
        // when
        let returnedComponent: PComponentMock? = try? sut.getComponent(ofEntity: entity)
        // then
        XCTAssertTrue(component === returnedComponent)
    }
    
    func testGetEntitiesWithComponents_WhenCalled_ShouldReturnAllEntitiesAndItsComponent() throws {
        // given
        let entity = Entity(id: 0)
        let component = PComponentMock()
        try sut.addComponent(component, toEntity: entity)
        // when
        let components: [Entity: PComponentMock] = try sut.getEntitiesWithComponents()
        // then
        XCTAssertEqual(components.count, 1)
        XCTAssertTrue(component === components[entity])
    }
    
    func testGetEntitiesWithComponents_WhenCalledWithInvalidComponentType_ShouldThrowError() throws {
        // given
        let entity = Entity(id: 0)
        let component = PComponentMock()
        try sut.addComponent(component, toEntity: entity)
        // when
        do {
            let _: [Entity: InvalidComponent] = try sut.getEntitiesWithComponents()
            XCTFail(description: "Should throw error)
        } catch {
        }
    }
}
