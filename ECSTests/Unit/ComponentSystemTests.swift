//
//  ComponentSystemTest.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import XCTest
@testable import LionECS

class ComponentSystemTests: XCTestCase {
    var sut: ComponentSystem<ComponentManager>!
    
    override func setUp() {
        let componentManager = ComponentManager()
        let world = World(componentManager: componentManager)
        sut = ComponentSystem(world: world, entityManager: world.entityManager, componentManager: world.componentManager, entityRequester: world.entityRequester)
    }
    
    func testUpdate_WhenCalled_ShouldDoNothing() {
        sut.update()
    }
}
