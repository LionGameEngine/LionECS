//
//  ComponentManagersPerformanceTests.swift
//  Example
//
//  Created by Tomasz Lewandowski on 16/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
import LionECS

class ComponentManagersPerformanceTests: XCTestCase {
    struct Component1: PComponent {
        let x: Int64
        let y: Int64
    }
    struct Component2: PComponent {
        let x: Int64
        let y: Int64
    }
    struct Component3: PComponent {
        let x: Int64
        let y: Int64
    }

    let runs: Int = 1
    let entitiesCount: Int = 100000
        
    func testAddingComponentsPerformance() {
        measure {
            for _ in 1...runs {
                let managers = ComponentManagers()
                let sut = EntityRequester<ComponentManagers>(entityManager: EntityManager<ComponentManagers>(componentManagers: managers), componentManagers: managers)
                let component1Manager: ComponentManager<Component1> = sut.getComponentManagers().getOrCreateManagerOfType(Component1.self)
                let component2Manager: ComponentManager<Component2> = sut.getComponentManagers().getOrCreateManagerOfType(Component2.self)
                let component3Manager: ComponentManager<Component3> = sut.getComponentManagers().getOrCreateManagerOfType(Component3.self)
                for _ in 0...entitiesCount {
                    let entity = sut.getEntityManager().createEntity()
                    try? component1Manager.addComponent(Component1(x: 100, y: 200), toEntity: entity)
                    try? component2Manager.addComponent(Component2(x: 100, y: 200), toEntity: entity)
                    try? component3Manager.addComponent(Component3(x: 100, y: 200), toEntity: entity)
                }
            }
        }
    }
}
