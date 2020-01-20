// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif














class PChunkMock: PChunk {
    var memoryLayoutDescription: ChunkMemoryLayoutDescription {
        get { return underlyingMemoryLayoutDescription }
        set(value) { underlyingMemoryLayoutDescription = value }
    }
    var underlyingMemoryLayoutDescription: ChunkMemoryLayoutDescription!
    var memoryManager: PMemoryManager {
        get { return underlyingMemoryManager }
        set(value) { underlyingMemoryManager = value }
    }
    var underlyingMemoryManager: PMemoryManager!

    //MARK: - setEntityData
    var setEntityDataDataPointerThrowableError: Error?
    var setEntityDataDataPointerCallsCount = 0
    var setEntityDataDataPointerCalled: Bool {
        return setEntityDataDataPointerCallsCount > 0
    }
    var setEntityDataDataPointerReceivedArguments: (entity: Entity, dataPointer: UnsafeRawBufferPointer)?
    var setEntityDataDataPointerReceivedInvocations: [(entity: Entity, dataPointer: UnsafeRawBufferPointer)] = []
    var setEntityDataDataPointerClosure: ((Entity, UnsafeRawBufferPointer) throws -> Void)?

    func setEntityData(_ entity: Entity, dataPointer: UnsafeRawBufferPointer) throws {
        if let error = setEntityDataDataPointerThrowableError {
            throw error
        }
        setEntityDataDataPointerCallsCount += 1
        setEntityDataDataPointerReceivedArguments = (entity: entity, dataPointer: dataPointer)
        setEntityDataDataPointerReceivedInvocations.append((entity: entity, dataPointer: dataPointer))
        try setEntityDataDataPointerClosure?(entity, dataPointer)
    }

    //MARK: - copyEntityData
    var copyEntityDataIntoThrowableError: Error?
    var copyEntityDataIntoCallsCount = 0
    var copyEntityDataIntoCalled: Bool {
        return copyEntityDataIntoCallsCount > 0
    }
    var copyEntityDataIntoReceivedArguments: (entity: Entity, into: UnsafeMutableRawBufferPointer)?
    var copyEntityDataIntoReceivedInvocations: [(entity: Entity, into: UnsafeMutableRawBufferPointer)] = []
    var copyEntityDataIntoClosure: ((Entity, UnsafeMutableRawBufferPointer) throws -> Void)?

    func copyEntityData(_ entity: Entity, into: UnsafeMutableRawBufferPointer) throws {
        if let error = copyEntityDataIntoThrowableError {
            throw error
        }
        copyEntityDataIntoCallsCount += 1
        copyEntityDataIntoReceivedArguments = (entity: entity, into: into)
        copyEntityDataIntoReceivedInvocations.append((entity: entity, into: into))
        try copyEntityDataIntoClosure?(entity, into)
    }

    //MARK: - manageEntity
    var manageEntityEntityThrowableError: Error?
    var manageEntityEntityCallsCount = 0
    var manageEntityEntityCalled: Bool {
        return manageEntityEntityCallsCount > 0
    }
    var manageEntityEntityReceivedEntity: Entity?
    var manageEntityEntityReceivedInvocations: [Entity] = []
    var manageEntityEntityClosure: ((Entity) throws -> Void)?

    func manageEntity(entity: Entity) throws {
        if let error = manageEntityEntityThrowableError {
            throw error
        }
        manageEntityEntityCallsCount += 1
        manageEntityEntityReceivedEntity = entity
        manageEntityEntityReceivedInvocations.append(entity)
        try manageEntityEntityClosure?(entity)
    }

    //MARK: - unmanageEntity
    var unmanageEntityThrowableError: Error?
    var unmanageEntityCallsCount = 0
    var unmanageEntityCalled: Bool {
        return unmanageEntityCallsCount > 0
    }
    var unmanageEntityReceivedEntity: Entity?
    var unmanageEntityReceivedInvocations: [Entity] = []
    var unmanageEntityClosure: ((Entity) throws -> Void)?

    func unmanageEntity(_ entity: Entity) throws {
        if let error = unmanageEntityThrowableError {
            throw error
        }
        unmanageEntityCallsCount += 1
        unmanageEntityReceivedEntity = entity
        unmanageEntityReceivedInvocations.append(entity)
        try unmanageEntityClosure?(entity)
    }

}
class PComponentMock: PComponent {
    var componentIdentifier: ComponentIdentifier {
        get { return underlyingComponentIdentifier }
        set(value) { underlyingComponentIdentifier = value }
    }
    var underlyingComponentIdentifier: ComponentIdentifier!

}
class PCreatableSystemMock<ComponentManager: PComponentManager>: PCreatableSystem {

    //MARK: - init
    var initWorldEntityManagerComponentManagerEntityRequesterReceivedArguments: (world: World<ComponentManager>, entityManager: EntityManager<ComponentManager>, componentManager: ComponentManager, entityRequester: EntityRequester<ComponentManager>)?
    var initWorldEntityManagerComponentManagerEntityRequesterReceivedInvocations: [(world: World<ComponentManager>, entityManager: EntityManager<ComponentManager>, componentManager: ComponentManager, entityRequester: EntityRequester<ComponentManager>)] = []
    var initWorldEntityManagerComponentManagerEntityRequesterClosure: ((World<ComponentManager>, EntityManager<ComponentManager>, ComponentManager, EntityRequester<ComponentManager>) -> Void)?

    required init(world: World<ComponentManager>, entityManager: EntityManager<ComponentManager>, componentManager: ComponentManager, entityRequester: EntityRequester<ComponentManager>) {
        initWorldEntityManagerComponentManagerEntityRequesterReceivedArguments = (world: world, entityManager: entityManager, componentManager: componentManager, entityRequester: entityRequester)
        initWorldEntityManagerComponentManagerEntityRequesterReceivedInvocations.append((world: world, entityManager: entityManager, componentManager: componentManager, entityRequester: entityRequester))
        initWorldEntityManagerComponentManagerEntityRequesterClosure?(world, entityManager, componentManager, entityRequester)
    }
    //MARK: - update
    var updateCallsCount = 0
    var updateCalled: Bool {
        return updateCallsCount > 0
    }
    var updateClosure: (() -> Void)?

    func update() {
        updateCallsCount += 1
        updateClosure?()
    }

}
class PEntityQueryMock<ComponentManager: PComponentManager, Result>: PEntityQuery {

    //MARK: - resolveWith
    var resolveWithRequesterThrowableError: Error?
    var resolveWithRequesterCallsCount = 0
    var resolveWithRequesterCalled: Bool {
        return resolveWithRequesterCallsCount > 0
    }
    var resolveWithRequesterReceivedRequester: EntityRequester<ComponentManager>?
    var resolveWithRequesterReceivedInvocations: [EntityRequester<ComponentManager>] = []
    var resolveWithRequesterReturnValue: Result!
    var resolveWithRequesterClosure: ((EntityRequester<ComponentManager>) throws -> Result)?

    func resolveWith(requester: EntityRequester<ComponentManager>) throws -> Result {
        if let error = resolveWithRequesterThrowableError {
            throw error
        }
        resolveWithRequesterCallsCount += 1
        resolveWithRequesterReceivedRequester = requester
        resolveWithRequesterReceivedInvocations.append(requester)
        return try resolveWithRequesterClosure.map({ try $0(requester) }) ?? resolveWithRequesterReturnValue
    }

}
class PMemoryManagerMock: PMemoryManager {

    //MARK: - free
    var freePointerCallsCount = 0
    var freePointerCalled: Bool {
        return freePointerCallsCount > 0
    }
    var freePointerReceivedPointer: UnsafeRawBufferPointer?
    var freePointerReceivedInvocations: [UnsafeRawBufferPointer] = []
    var freePointerClosure: ((UnsafeRawBufferPointer) -> Void)?

    func free(pointer: UnsafeRawBufferPointer) {
        freePointerCallsCount += 1
        freePointerReceivedPointer = pointer
        freePointerReceivedInvocations.append(pointer)
        freePointerClosure?(pointer)
    }

    //MARK: - copy
    var copyFromToCallsCount = 0
    var copyFromToCalled: Bool {
        return copyFromToCallsCount > 0
    }
    var copyFromToReceivedArguments: (from: UnsafeMutableRawBufferPointer, to: UnsafeMutableRawBufferPointer)?
    var copyFromToReceivedInvocations: [(from: UnsafeMutableRawBufferPointer, to: UnsafeMutableRawBufferPointer)] = []
    var copyFromToClosure: ((UnsafeMutableRawBufferPointer, UnsafeMutableRawBufferPointer) -> Void)?

    func copy(from: UnsafeMutableRawBufferPointer, to: UnsafeMutableRawBufferPointer) {
        copyFromToCallsCount += 1
        copyFromToReceivedArguments = (from: from, to: to)
        copyFromToReceivedInvocations.append((from: from, to: to))
        copyFromToClosure?(from, to)
    }

    //MARK: - alloc
    var allocCountCallsCount = 0
    var allocCountCalled: Bool {
        return allocCountCallsCount > 0
    }
    var allocCountReceivedCount: Int?
    var allocCountReceivedInvocations: [Int] = []
    var allocCountReturnValue: UnsafeMutableRawBufferPointer!
    var allocCountClosure: ((Int) -> UnsafeMutableRawBufferPointer)?

    func alloc(count: Int) -> UnsafeMutableRawBufferPointer {
        allocCountCallsCount += 1
        allocCountReceivedCount = count
        allocCountReceivedInvocations.append(count)
        return allocCountClosure.map({ $0(count) }) ?? allocCountReturnValue
    }

    //MARK: - clear
    var clearPointerCallsCount = 0
    var clearPointerCalled: Bool {
        return clearPointerCallsCount > 0
    }
    var clearPointerReceivedPointer: UnsafeMutableRawBufferPointer?
    var clearPointerReceivedInvocations: [UnsafeMutableRawBufferPointer] = []
    var clearPointerClosure: ((UnsafeMutableRawBufferPointer) -> Void)?

    func clear(pointer: UnsafeMutableRawBufferPointer) {
        clearPointerCallsCount += 1
        clearPointerReceivedPointer = pointer
        clearPointerReceivedInvocations.append(pointer)
        clearPointerClosure?(pointer)
    }

}
class PSystemMock: PSystem {

    //MARK: - update
    var updateCallsCount = 0
    var updateCalled: Bool {
        return updateCallsCount > 0
    }
    var updateClosure: (() -> Void)?

    func update() {
        updateCallsCount += 1
        updateClosure?()
    }

}

//  Copyright © 2020 LionSoftware. All rights reserved.

@testable import LionECS
