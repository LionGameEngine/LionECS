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
    var initWorldEntityManagerEntityRequesterReceivedArguments: (world: World<ComponentManagers>, entityManager: EntityManager, entityRequester: EntityRequester<ComponentManagers>)?
    var initWorldEntityManagerEntityRequesterReceivedInvocations: [(world: World<ComponentManagers>, entityManager: EntityManager, entityRequester: EntityRequester<ComponentManagers>)] = []
    var initWorldEntityManagerEntityRequesterClosure: ((World<ComponentManagers>, EntityManager, EntityRequester<ComponentManagers>) -> Void)?

    required init(world: World<ComponentManagers>, entityManager: EntityManager, entityRequester: EntityRequester<ComponentManagers>) {
        initWorldEntityManagerEntityRequesterReceivedArguments = (world: world, entityManager: entityManager, entityRequester: entityRequester)
        initWorldEntityManagerEntityRequesterReceivedInvocations.append((world: world, entityManager: entityManager, entityRequester: entityRequester))
        initWorldEntityManagerEntityRequesterClosure?(world, entityManager, entityRequester)
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
