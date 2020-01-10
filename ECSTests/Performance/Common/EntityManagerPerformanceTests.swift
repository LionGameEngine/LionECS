//
//  EntityManagerPerformanceTests.swift
//  LionECSTests
//
//  Created by Tomasz Lewandowski on 08/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import LionECS

class EntityManagerPerformanceTests: XCTestCase {
    var sut: EntityManager!
    let runs: Int = 100000
    
    override func setUp() {
        sut = EntityManager()
    }
    
    func testCreateEntity() {
        measure {
            for _ in 1...runs {
                sut.createEntity()
            }
        }
    }
    
    func testGetExistingEntities() {
        for _ in 1...runs {
            sut.createEntity()
        }
        measure {
            for _ in 1...runs {
                _ = sut.getExistingEntities()
            }
        }
    }
    
    func testIsExisting() {
        for _ in 1...runs {
            sut.createEntity()
        }
        measure {
            for entity in sut.getExistingEntities() {
                _ = sut.isExisting(entity: entity)
            }
        }
    }
    
    func testDestroyEntity() {
        for _ in 1...runs {
            sut.createEntity()
        }
        measure {
            for entity in sut.getExistingEntities() {
                sut.destroyEntity(entity)
            }
        }
    }
}
