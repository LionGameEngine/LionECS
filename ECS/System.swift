//
//  System.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//

// sourcery: AutoMockable
public protocol PSystem {
    init()
    func update()
}
