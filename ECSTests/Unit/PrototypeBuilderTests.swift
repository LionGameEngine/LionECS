//
//  PrototypeBuilderTests.swift
//  Example
//
//  Created by Tomasz Lewandowski on 05/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class PrototypeBuilderTests: XCTestCase {
    func testBuild_WhenJustInitialized_ShouldReturnPrototypeWithoutComponentIdentifiers() {
        // given
        let sut = PrototypeBuilder()
        // then
        XCTAssertEqual([], sut.build().componentIdentifiers)
    }
    
    func testBuild_WhenJustInitializedWithPrototype_ShouldReturnPrototypeWithSameIdentifiers() {
        // given
        let prototype = Prototype(layoutDescription: ChunkMemoryLayoutDescription(entitySize: 16, componentDescriptions: [PComponentMock.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 0)], chunkEntrySize: 17))
        let sut = PrototypeBuilder(prototype: prototype)
        // then
        XCTAssertEqual(prototype.componentIdentifiers, sut.build().componentIdentifiers)
    }
    
    func testBuild_WhenJustInitializedWithPrototype_ShouldReturnNewInstanceOfPrototype() {
        // given
        let prototype = Prototype(layoutDescription: ChunkMemoryLayoutDescription(entitySize: 16, componentDescriptions: [PComponentMock.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 0)], chunkEntrySize: 17))
        let sut = PrototypeBuilder(prototype: prototype)
        // then
        XCTAssertFalse(prototype === sut.build())
    }
        
    func testAdd_WhenCalled_ShouldAddGivenComponentIdentifier() {
        // when
        let sut = PrototypeBuilder().addComponentType(PComponentMock.self)
        // then
        XCTAssertEqual([PComponentMock.componentIdentifier], sut.build().componentIdentifiers)
    }
    
    func testAdd_WhenCalledMoreThanOnce_ShouldAddComponentIdentifierJustOnce() {
        // when
        let sut = PrototypeBuilder().addComponentType(PComponentMock.self)
            .addComponentType(PComponentMock.self)
            .addComponentType(PComponentMock.self)
        // then
        XCTAssertEqual([PComponentMock.componentIdentifier], sut.build().componentIdentifiers)
    }
    
    func testRemove_WhenCalled_ShouldRemoveGivenComponentIdentifier() {
        // given
        var sut = PrototypeBuilder().addComponentType(PComponentMock.self)
        // when
        sut = sut.removeComponentType(PComponentMock.self)
        // then
        XCTAssertEqual([], sut.build().componentIdentifiers)
    }
    
    func testRemove_WhenCalledForEmptyBuilder_ShouldDoNothing() {
        // given
        var sut = PrototypeBuilder()
        // when
        sut = sut.removeComponentType(PComponentMock.self)
        // then
        XCTAssertEqual([], sut.build().componentIdentifiers)
    }
}
