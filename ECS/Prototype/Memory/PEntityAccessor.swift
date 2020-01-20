//
//  PEntityAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public protocol PEntityAccessor {
    func access(index: Int) -> Entity
    func accessMutable(index: Int) -> UnsafeMutablePointer<Entity>
    func clear(index: Int)
    func set(entity: Entity, index: Int)
}
