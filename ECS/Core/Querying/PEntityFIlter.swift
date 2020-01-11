//
//  PEntityFIlter.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PEntityFilter {
    var componentIdentifier: ComponentIdentifier { get }
    func filter<ComponentManagers: PComponentManagers>(requester: EntityRequester<ComponentManagers>, entities: Set<Entity>) throws -> Set<Entity>
    func filter(chunk: Chunk) -> Chunk?
}
