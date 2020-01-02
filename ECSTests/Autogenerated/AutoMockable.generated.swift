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

@testable import ECS
