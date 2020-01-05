//
//  ChunkMemoryLayoutDescriptionBuilderTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 05/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class ChunkMemoryLayoutDescriptionBuilderTests: XCTestCase {
    struct FooComponent: PComponent { let foo: Int32 }
    struct BarComponent: PComponent { let bar: Int64 }
    struct TagComponent: PComponent { }
    struct Tag2Component: PComponent { }
    
    func testBuild_WhenJustInitialized_ShouldReturnBaseLayoutDescription() {
        // given
        let sut = ChunkMemoryLayoutDescriptionBuilder()
        // then
        XCTAssertEqual(ChunkMemoryLayoutDescription(entitySize: 16, startingOffsets: [:], componentSizes: [:], chunkEntrySize: 16), sut.build())
    }
    
    func testBuild_WhenInitializedWithIntitialChunkDescription_ShouldReturnCopyOfThatDescription() {
        // given
        let description = ChunkMemoryLayoutDescription(
            entitySize: 16,
            startingOffsets: [PComponentMock.componentIdentifier: 16],
            componentSizes: [PComponentMock.componentIdentifier: 10],
            chunkEntrySize: 26)
        let sut = ChunkMemoryLayoutDescriptionBuilder(baseDescription: description)
        // when
        let newDescription = sut.build()
        // then
        XCTAssertEqual(description, newDescription)
    }
    
    func testAdd_WhenCalledWithComponent_ShouldAddThisComponentDistinctivelyToDescription() {
        // given
        let expectedDescription = ChunkMemoryLayoutDescription(
            entitySize: 16,
            startingOffsets: [
                FooComponent.componentIdentifier: 16,
                BarComponent.componentIdentifier: 20,
                TagComponent.componentIdentifier: 28,
                Tag2Component.componentIdentifier: 28
            ],
            componentSizes: [
                FooComponent.componentIdentifier: 4,
                BarComponent.componentIdentifier: 8,
                TagComponent.componentIdentifier: 0,
                Tag2Component.componentIdentifier: 0
            ],
            chunkEntrySize: 28)
        // when
        let description = ChunkMemoryLayoutDescriptionBuilder()
            .add(FooComponent.self)
            .add(BarComponent.self)
            .add(TagComponent.self)
            .add(Tag2Component.self)
            .add(FooComponent.self)
            .build()
        // then
        XCTAssertEqual(expectedDescription, description)
    }
    
    func testRemove_WhenCalledWithComponent_ShouldRemoveThatComponentAndRestructureAllAfterIt() {
        // given
        let expectedDescription = ChunkMemoryLayoutDescription(
            entitySize: 16,
            startingOffsets: [
                FooComponent.componentIdentifier: 16,
                TagComponent.componentIdentifier: 20,
                Tag2Component.componentIdentifier: 20
            ],
            componentSizes: [
                FooComponent.componentIdentifier: 4,
                TagComponent.componentIdentifier: 0,
                Tag2Component.componentIdentifier: 0
            ],
            chunkEntrySize: 20)
        let sut = ChunkMemoryLayoutDescriptionBuilder()
            .add(FooComponent.self)
            .add(BarComponent.self)
            .add(TagComponent.self)
            .add(Tag2Component.self)
            .add(FooComponent.self)
        // when
        let description = sut.remove(BarComponent.self)
            .build()
        // then
        XCTAssertEqual(expectedDescription, description)
    }
    
    func testRemove_WhenCalledWithComponentMutlipleTimes_ShouldRemoveThatComponentJustOnce() {
        // given
        let expectedDescription = ChunkMemoryLayoutDescription(
            entitySize: 16,
            startingOffsets: [
                FooComponent.componentIdentifier: 16,
                TagComponent.componentIdentifier: 20,
                Tag2Component.componentIdentifier: 20
            ],
            componentSizes: [
                FooComponent.componentIdentifier: 4,
                TagComponent.componentIdentifier: 0,
                Tag2Component.componentIdentifier: 0
            ],
            chunkEntrySize: 20)
        let sut = ChunkMemoryLayoutDescriptionBuilder()
            .add(FooComponent.self)
            .add(BarComponent.self)
            .add(TagComponent.self)
            .add(Tag2Component.self)
            .add(FooComponent.self)
        // when
        let description = sut.remove(BarComponent.self)
            .remove(BarComponent.self)
            .build()
        // then
        XCTAssertEqual(expectedDescription, description)
    }
}
