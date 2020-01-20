//
//  PEntityQuery.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

// sourcery: AutoMockable
// sourcery: AutoMockableGenerics="<ComponentManager: PComponentManager, Result>"
public protocol PEntityQuery {
    associatedtype ComponentManager: PComponentManager
    associatedtype Result
    func resolveWith(requester: EntityRequester<ComponentManager>) throws -> Result
}
