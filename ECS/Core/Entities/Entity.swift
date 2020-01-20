//
//  Entity.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public struct Entity: Identifiable, Equatable, Hashable {
    public let id: UInt64
    public let version: UInt64
    public static let NullEntity: Entity = Entity(id: 0, version: 0)
    
    public var isNull: Bool {
        return self == Entity.NullEntity
    }

    public init(id: UInt64, version: UInt64 = 1) {
        self.id = id
        self.version = version
    }
}
