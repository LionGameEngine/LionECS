//
//  ManagedMemoryBlobTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class ManagedMemoryBlobTests: XCTestCase {
    func testMemoryAllocation_WhenBlobCreated_ShouldInitializeMemory() {
        // given
        let managerMock = PMemoryManagerMock()
        managerMock.allocCountReturnValue = UnsafeMutableRawBufferPointer.allocate(byteCount: 1, alignment: 0)
        // when
        let _ = ManagedMemoryBlob(memoryManager: managerMock)
        // then
        XCTAssertTrue(managerMock.allocCountCalled)
        XCTAssertEqual(1024, managerMock.allocCountReceivedCount)
    }
    
    func testMemoryAllocation_WhenBlobCreated_ShouldClearMemory() {
        // given
        let managerMock = PMemoryManagerMock()
        managerMock.allocCountReturnValue = UnsafeMutableRawBufferPointer.allocate(byteCount: 1, alignment: 0)
        // when
        let _ = ManagedMemoryBlob(memoryManager: managerMock)
        // then
        XCTAssertTrue(managerMock.clearPointerCalled)
    }
    
    func testMemoryDeallocation_WhenBlobDestroyed_ShouldDeinitializeMemory() {
        // given
        let managerMock: PMemoryManagerMock! = PMemoryManagerMock()
        managerMock.allocCountReturnValue = UnsafeMutableRawBufferPointer.allocate(byteCount: 1, alignment: 0)
        var sut: ManagedMemoryBlob! = ManagedMemoryBlob(memoryManager: managerMock)
        // when
        sut = nil
        // then
        XCTAssertTrue(managerMock.freePointerCalled)
        XCTAssertEqual(managerMock.allocCountReturnValue.baseAddress, managerMock.freePointerReceivedPointer?.baseAddress)
    }
    
    func testMemoryDeallocation_WhenBlobNotDestroyed_ShouldNotBePerformed() {
        // given
        let managerMock = PMemoryManagerMock()
        managerMock.allocCountReturnValue = UnsafeMutableRawBufferPointer.allocate(byteCount: 1, alignment: 0)
        let sut = ManagedMemoryBlob(memoryManager: managerMock)
        // then
        XCTAssertFalse(managerMock.freePointerCalled)
    }

}
