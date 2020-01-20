//
//  ChunkMemoryLayoutDescriptionBuilderTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 05/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
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
        XCTAssertEqual(ChunkMemoryLayoutDescription(entitySize: 16, componentDescriptions: [:], chunkEntrySize: 16), sut.build())
    }
    
    func testBuild_WhenInitializedWithIntitialChunkDescription_ShouldReturnCopyOfThatDescription() {
        // given
        let description = ChunkMemoryLayoutDescription(
            entitySize: 16,
            componentDescriptions: [PComponentMock.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 10)],
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
            componentDescriptions: [
                FooComponent.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 4),
                BarComponent.componentIdentifier: ComponentLayoutDescription(offset: 20, size: 8),
                TagComponent.componentIdentifier: ComponentLayoutDescription(offset: 28, size: 1),
                Tag2Component.componentIdentifier: ComponentLayoutDescription(offset: 29, size: 1)
            ],
            chunkEntrySize: 30)
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
            componentDescriptions: [
                FooComponent.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 4),
                TagComponent.componentIdentifier: ComponentLayoutDescription(offset: 20, size: 1),
                Tag2Component.componentIdentifier: ComponentLayoutDescription(offset: 21, size: 1)
            ],
            chunkEntrySize: 22)
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
            componentDescriptions: [
                FooComponent.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 4),
                TagComponent.componentIdentifier: ComponentLayoutDescription(offset: 20, size: 1),
                Tag2Component.componentIdentifier: ComponentLayoutDescription(offset: 21, size: 1)
            ],
            chunkEntrySize: 22)
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
