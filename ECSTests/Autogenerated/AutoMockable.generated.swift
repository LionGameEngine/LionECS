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














class PSystemMock: PSystem {

    //MARK: - init

    var initWorldEntityManagerReceivedArguments: (world: World, entityManager: EntityManager)?
    var initWorldEntityManagerReceivedInvocations: [(world: World, entityManager: EntityManager)] = []
    var initWorldEntityManagerClosure: ((World, EntityManager) -> Void)?

    required init(world: World, entityManager: EntityManager) {
        initWorldEntityManagerReceivedArguments = (world: world, entityManager: entityManager)
        initWorldEntityManagerReceivedInvocations.append((world: world, entityManager: entityManager))
        initWorldEntityManagerClosure?(world, entityManager)
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

@testable import ECS
