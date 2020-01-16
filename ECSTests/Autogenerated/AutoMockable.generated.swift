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
    var setEntityDataDataThrowableError: Error?
    var setEntityDataDataCallsCount = 0
    var setEntityDataDataCalled: Bool {
        return setEntityDataDataCallsCount > 0
    }
    var setEntityDataDataReceivedArguments: (entity: Entity, data: [UInt8])?
    var setEntityDataDataReceivedInvocations: [(entity: Entity, data: [UInt8])] = []
    var setEntityDataDataClosure: ((Entity, [UInt8]) throws -> Void)?

    func setEntityData(_ entity: Entity, data: [UInt8]) throws {
        if let error = setEntityDataDataThrowableError {
            throw error
        }
        setEntityDataDataCallsCount += 1
        setEntityDataDataReceivedArguments = (entity: entity, data: data)
        setEntityDataDataReceivedInvocations.append((entity: entity, data: data))
        try setEntityDataDataClosure?(entity, data)
    }

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

    //MARK: - getEntityData
    var getEntityDataThrowableError: Error?
    var getEntityDataCallsCount = 0
    var getEntityDataCalled: Bool {
        return getEntityDataCallsCount > 0
    }
    var getEntityDataReceivedEntity: Entity?
    var getEntityDataReceivedInvocations: [Entity] = []
    var getEntityDataReturnValue: [UInt8]!
    var getEntityDataClosure: ((Entity) throws -> [UInt8])?

    func getEntityData(_ entity: Entity) throws -> [UInt8] {
        if let error = getEntityDataThrowableError {
            throw error
        }
        getEntityDataCallsCount += 1
        getEntityDataReceivedEntity = entity
        getEntityDataReceivedInvocations.append(entity)
        return try getEntityDataClosure.map({ try $0(entity) }) ?? getEntityDataReturnValue
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
class PCreatableSystemMock<ComponentManagers: PComponentManagers>: PCreatableSystem {

    //MARK: - init
    var initWorldEntityManagerComponentManagersEntityRequesterReceivedArguments: (world: World<ComponentManagers>, entityManager: EntityManager<ComponentManagers>, componentManagers: ComponentManagers, entityRequester: EntityRequester<ComponentManagers>)?
    var initWorldEntityManagerComponentManagersEntityRequesterReceivedInvocations: [(world: World<ComponentManagers>, entityManager: EntityManager<ComponentManagers>, componentManagers: ComponentManagers, entityRequester: EntityRequester<ComponentManagers>)] = []
    var initWorldEntityManagerComponentManagersEntityRequesterClosure: ((World<ComponentManagers>, EntityManager<ComponentManagers>, ComponentManagers, EntityRequester<ComponentManagers>) -> Void)?

    required init(world: World<ComponentManagers>, entityManager: EntityManager<ComponentManagers>, componentManagers: ComponentManagers, entityRequester: EntityRequester<ComponentManagers>) {
        initWorldEntityManagerComponentManagersEntityRequesterReceivedArguments = (world: world, entityManager: entityManager, componentManagers: componentManagers, entityRequester: entityRequester)
        initWorldEntityManagerComponentManagersEntityRequesterReceivedInvocations.append((world: world, entityManager: entityManager, componentManagers: componentManagers, entityRequester: entityRequester))
        initWorldEntityManagerComponentManagersEntityRequesterClosure?(world, entityManager, componentManagers, entityRequester)
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
class PEntityQueryMock<ComponentManagers: PComponentManagers, Result: PEntityQueryResult>: PEntityQuery {

    //MARK: - resolveWith
    var resolveWithRequesterThrowableError: Error?
    var resolveWithRequesterCallsCount = 0
    var resolveWithRequesterCalled: Bool {
        return resolveWithRequesterCallsCount > 0
    }
    var resolveWithRequesterReceivedRequester: EntityRequester<ComponentManagers>?
    var resolveWithRequesterReceivedInvocations: [EntityRequester<ComponentManagers>] = []
    var resolveWithRequesterReturnValue: Result!
    var resolveWithRequesterClosure: ((EntityRequester<ComponentManagers>) throws -> Result)?

    func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        if let error = resolveWithRequesterThrowableError {
            throw error
        }
        resolveWithRequesterCallsCount += 1
        resolveWithRequesterReceivedRequester = requester
        resolveWithRequesterReceivedInvocations.append(requester)
        return try resolveWithRequesterClosure.map({ try $0(requester) }) ?? resolveWithRequesterReturnValue
    }

    //MARK: - getFilteredEntities
    var getFilteredEntitiesRequesterThrowableError: Error?
    var getFilteredEntitiesRequesterCallsCount = 0
    var getFilteredEntitiesRequesterCalled: Bool {
        return getFilteredEntitiesRequesterCallsCount > 0
    }
    var getFilteredEntitiesRequesterReceivedRequester: EntityRequester<ComponentManagers>?
    var getFilteredEntitiesRequesterReceivedInvocations: [EntityRequester<ComponentManagers>] = []
    var getFilteredEntitiesRequesterReturnValue: Set<Entity>!
    var getFilteredEntitiesRequesterClosure: ((EntityRequester<ComponentManagers>) throws -> Set<Entity>)?

    func getFilteredEntities(requester: EntityRequester<ComponentManagers>) throws -> Set<Entity> {
        if let error = getFilteredEntitiesRequesterThrowableError {
            throw error
        }
        getFilteredEntitiesRequesterCallsCount += 1
        getFilteredEntitiesRequesterReceivedRequester = requester
        getFilteredEntitiesRequesterReceivedInvocations.append(requester)
        return try getFilteredEntitiesRequesterClosure.map({ try $0(requester) }) ?? getFilteredEntitiesRequesterReturnValue
    }

    //MARK: - getFilters
    var getFiltersCallsCount = 0
    var getFiltersCalled: Bool {
        return getFiltersCallsCount > 0
    }
    var getFiltersReturnValue: [PEntityFilter]!
    var getFiltersClosure: (() -> [PEntityFilter])?

    func getFilters() -> [PEntityFilter] {
        getFiltersCallsCount += 1
        return getFiltersClosure.map({ $0() }) ?? getFiltersReturnValue
    }

}
class PEntityQueryResultMock<Components>: PEntityQueryResult {

    //MARK: - components
    var componentsCallsCount = 0
    var componentsCalled: Bool {
        return componentsCallsCount > 0
    }
    var componentsReturnValue: [Components]!
    var componentsClosure: (() -> [Components])?

    func components() -> [Components] {
        componentsCallsCount += 1
        return componentsClosure.map({ $0() }) ?? componentsReturnValue
    }

    //MARK: - entityWithComponents
    var entityWithComponentsCallsCount = 0
    var entityWithComponentsCalled: Bool {
        return entityWithComponentsCallsCount > 0
    }
    var entityWithComponentsReturnValue: [Entity: Components]!
    var entityWithComponentsClosure: (() -> [Entity: Components])?

    func entityWithComponents() -> [Entity: Components] {
        entityWithComponentsCallsCount += 1
        return entityWithComponentsClosure.map({ $0() }) ?? entityWithComponentsReturnValue
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
