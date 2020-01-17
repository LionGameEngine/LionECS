//
//  PEntityDataAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PEntityDataAccessor {
    func copyEntityData(index: Int, into: UnsafeMutableRawBufferPointer)
    func set(entityDataPointer: UnsafeRawBufferPointer, index: Int)
    func clear(index: Int)
}
