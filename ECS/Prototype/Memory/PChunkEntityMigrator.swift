//
//  PChunkEntityMigrator.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public protocol PChunkEntityMigrator {
    func migrate(fromChunk: PChunk, toChunk: PChunk, entity: Entity) throws
    func migrate(fromChunk: PChunk, toChunk: PChunk, entity: Entity, shouldFreeMemory: Bool) throws
}
