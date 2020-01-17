//
//  PChunkFilter.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PChunkFilter {
    func filter(chunk: Chunk) -> Chunk?
}
