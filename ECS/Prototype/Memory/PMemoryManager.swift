//
//  PMemoryManager.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

// sourcery: AutoMockable
public protocol PMemoryManager {
    func free(pointer: UnsafeRawBufferPointer)
    func copy(from: UnsafeMutableRawBufferPointer, to: UnsafeMutableRawBufferPointer)
    func alloc(count: Int) -> UnsafeMutableRawBufferPointer
    func clear(pointer: UnsafeMutableRawBufferPointer)
}
