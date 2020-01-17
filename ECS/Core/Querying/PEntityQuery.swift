//
//  PEntityQuery.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

// sourcery: AutoMockable
// sourcery: AutoMockableGenerics="<ComponentManagers: PComponentManagers, Result>"
public protocol PEntityQuery {
    associatedtype ComponentManagers: PComponentManagers
    associatedtype Result
    func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result
}
