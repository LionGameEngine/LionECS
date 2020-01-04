//
//  ChunkEntityMigrator.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ChunkEntityMigrator: PChunkEntityMigrator {
    public func migrate(fromChunk: Chunk, toChunk: Chunk, entity: Entity) throws {
        let data = try fromChunk.getEntityData(entity)
        try toChunk.setEntityData(entity, data: data)
        try fromChunk.removeEntity(entity)
    }
}
