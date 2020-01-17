//
//  PComponentAccessor.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PComponentAccessor {
    func access<R1: PComponent>(index: Int) -> R1
    func accessMutable<R1: PComponent>(index: Int) -> UnsafeMutablePointer<R1>
    func clear<R1: PComponent>(_ type: R1.Type, index: Int)
    func set<R1: PComponent>(component: R1, index: Int)
}
