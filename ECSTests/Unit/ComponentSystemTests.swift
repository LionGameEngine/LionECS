//
//  ComponentSystemTest.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class ComponentSystemTests: XCTestCase {
    var sut: ComponentSystem<ComponentManagers>!
    
    override func setUp() {
        let componentManagers = ComponentManagers()
        let world = World(componentManagers: componentManagers)
        sut = ComponentSystem(world: world, entityManager: world.entityManager, componentManagers: world.componentManagers, entityRequester: world.entityRequester)
    }
    
    func testUpdate_WhenCalled_ShouldDoNothing() {
        sut.update()
    }
}
