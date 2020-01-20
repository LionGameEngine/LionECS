//
//  PEntityFIlter.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public protocol PEntityFilter {
    func filter(chunk: Chunk) -> Chunk?
}
