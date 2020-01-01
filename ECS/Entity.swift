//
//  Entity.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//

public struct Entity: Equatable, Hashable {
    var id: UInt64
    var version: UInt64
}
