//
//  PEntityDataAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PEntityDataAccessor {
    var entries: UnsafeMutableRawBufferPointer { get set }
    func copyEntityData(index: Int, into: UnsafeMutableRawBufferPointer)
    func access(index: Int) -> [UInt8]
    func set(entityDataPointer: UnsafeRawBufferPointer, index: Int)
    func set(entityData: [UInt8], index: Int)
    func clear(index: Int)
}
