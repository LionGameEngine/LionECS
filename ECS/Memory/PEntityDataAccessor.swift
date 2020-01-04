//
//  PEntityDataAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PEntityDataAccessor {
    var entries: UnsafeMutableRawBufferPointer { get set }
    func access(index: Int) -> [UInt8]
    func set(entityData: [UInt8], index: Int)
}
