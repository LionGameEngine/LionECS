//
//  ChunkMemotyLayoutDescriptionTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 06/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class ChunkMemoryLayoutDescriptionests: XCTestCase {
    func testHasComponent_WhenCalledAndHasNoComponent_ShouldReturnFalse() {
        // given
        let sut = ChunkMemoryLayoutDescription(entitySize: 16, componentDescriptions: [:], chunkEntrySize: 16)
        // when
        let hasComponent = sut.hasComponent(PComponentMock.self)
        // them
        XCTAssertFalse(hasComponent)
    }
    
    func testHasComponent_WhenCalledAndHasComponent_ShouldReturnFalse() {
        // given
        let sut = ChunkMemoryLayoutDescription(
            entitySize: 16,
            componentDescriptions: [PComponentMock.componentIdentifier: ComponentLayoutDescription(offset: 16, size: 4)],
            chunkEntrySize: 20)
        // when
        let hasComponent = sut.hasComponent(PComponentMock.self)
        // them
        XCTAssertTrue(hasComponent)
    }

}
