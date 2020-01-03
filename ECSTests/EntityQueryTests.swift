//
//  EntityQueryTests.swift
//  ECSTests
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import XCTest
@testable import ECS

class EntityQueryTests: XCTestCase {
    struct FooComponent: PComponent, Equatable {}
    struct BarComponent: PComponent, Equatable {}
    
    func testGetFilteredEntities_WhenCalled_ShouldReturnFilteredItems() throws {
        // given
        let sut: Requires2ComponentQuery<ComponentManagers, FooComponent, BarComponent> = Requires2ComponentQuery(exclusionFilters: [Excludes<PComponentMock>()])
        let requester = EntityRequester(entityManager: EntityManager(), componentManagers: ComponentManagers())
        let fooManager: ComponentManager<FooComponent> = requester.getComponentManagers().getOrCreateManagerOfType(FooComponent.self)
        let barManager: ComponentManager<BarComponent> = requester.getComponentManagers().getOrCreateManagerOfType(BarComponent.self)
        let mockManager: ComponentManager<PComponentMock> = requester.getComponentManagers().getOrCreateManagerOfType(PComponentMock.self)
        try fooManager.addComponent(FooComponent(), toEntity: requester.getEntityManager().createEntity())
        try barManager.addComponent(BarComponent(), toEntity: requester.getEntityManager().createEntity())
        try mockManager.addComponent(PComponentMock(), toEntity: requester.getEntityManager().createEntity())
        let entity1 = requester.getEntityManager().createEntity()
        try fooManager.addComponent(FooComponent(), toEntity: entity1)
        try barManager.addComponent(BarComponent(), toEntity: entity1)
        let entity2 = requester.getEntityManager().createEntity()
        try fooManager.addComponent(FooComponent(), toEntity: entity2)
        try barManager.addComponent(BarComponent(), toEntity: entity2)
        try mockManager.addComponent(PComponentMock(), toEntity: entity2)
        // when
        let filteredEntities = try sut.getFilteredEntities(requester: requester)
        // then
        XCTAssertEqual(Set([entity1]), filteredEntities)
    }
}
