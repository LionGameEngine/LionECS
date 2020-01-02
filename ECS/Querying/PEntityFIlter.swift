//
//  PEntityFIlter.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PEntityFilter {
    func filter<ComponentManagers: PComponentManagers>(requester: EntityRequester<ComponentManagers>, entities: Set<Entity>) throws -> Set<Entity>
}
