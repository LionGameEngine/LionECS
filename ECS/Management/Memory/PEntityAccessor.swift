//
//  PEntityAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PEntityAccessor {
    var entries: UnsafeMutableRawBufferPointer { get set }
    func access(index: Int) -> Entity
    func accessMutable(index: Int) -> UnsafeMutablePointer<Entity>
    func clear(index: Int)
}
