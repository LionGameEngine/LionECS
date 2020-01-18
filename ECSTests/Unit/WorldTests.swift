//
//  WorldTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class WorldTest: XCTestCase {
    class PComponentManagerMock: PComponentManager {
        
        required init() {
            
        }
        
        var chunks: [Chunk] = []
        
        func existingOrNewChunk(forPrototype prototype: Prototype) -> Chunk {
            return chunks.first!
        }
        
        func getEntities<Component>(withComponent: Component.Type) -> Set<Entity> where Component : PComponent {
            return Set([])
        }
        
        func hasComponent<Component>(entity: Entity, component: Component.Type) -> Bool where Component : PComponent {
            return false
        }
        
        func addComponent<Component>(_ component: Component, toEntity entity: Entity) throws where Component : PComponent {
            
        }
        
        func getComponent<Component>(ofEntity entity: Entity) throws -> Component where Component : PComponent {
            throw ComponentManagerError.componentMissing
        }
        
        func updateComponent<Component>(_ component: Component, ofEntity entity: Entity) throws where Component : PComponent {
            
        }
        
        func removeComponent<Component>(_ componentType: Component.Type, fromEntity: Entity) throws where Component : PComponent {
            
        }
        
        func getEntitiesWithComponents<Component>() throws -> [Entity : Component] where Component : PComponent {
            return [:]
        }
        
        func verify<Component>(componentType: Component.Type) throws where Component : PComponent {
            
        }
    }
    
    var sut: World<PComponentManagerMock>!
    
    override func setUp() {
        sut = World<PComponentManagerMock>(componentManager: PComponentManagerMock())
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
        let system = PCreatableSystemMock(world: sut, entityManager: sut.entityManager, componentManager: sut.componentManager, entityRequester: sut.entityRequester)
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
