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














class PComponentMock: PComponent {
    var componentIdentifier: ComponentIdentifier {
        get { return underlyingComponentIdentifier }
        set(value) { underlyingComponentIdentifier = value }
    }
    var underlyingComponentIdentifier: ComponentIdentifier!

}
class PCreatableSystemMock<ComponentManagers: PComponentManagers>: PCreatableSystem {

    //MARK: - init
    var initWorldEntityManagerComponentManagersEntityRequesterReceivedArguments: (world: World<ComponentManagers>, entityManager: EntityManager, componentManagers: ComponentManagers, entityRequester: EntityRequester<ComponentManagers>)?
    var initWorldEntityManagerComponentManagersEntityRequesterReceivedInvocations: [(world: World<ComponentManagers>, entityManager: EntityManager, componentManagers: ComponentManagers, entityRequester: EntityRequester<ComponentManagers>)] = []
    var initWorldEntityManagerComponentManagersEntityRequesterClosure: ((World<ComponentManagers>, EntityManager, ComponentManagers, EntityRequester<ComponentManagers>) -> Void)?

    required init(world: World<ComponentManagers>, entityManager: EntityManager, componentManagers: ComponentManagers, entityRequester: EntityRequester<ComponentManagers>) {
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
