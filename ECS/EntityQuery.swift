//
//  EntityQuery.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct EntityQuery {
    public let allOf: [PComponent.Type]
    public let noneOf: [PComponent.Type]
}
