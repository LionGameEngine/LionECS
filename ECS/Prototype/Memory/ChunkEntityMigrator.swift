//
//  ChunkEntityMigrator.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ChunkEntityMigrator: PChunkEntityMigrator {
    public func migrate(
        fromChunk: Chunk,
        toChunk: Chunk,
        entity: Entity) throws {
        let data = try fromChunk.getEntityData(entity)
        let translatedData = translateData(fromChunkDescription: fromChunk.memoryLayoutDescription, toChunkDescription: toChunk.memoryLayoutDescription, data: data)
        try toChunk.setEntityData(entity, data: translatedData)
        try fromChunk.removeEntity(entity)
    }
    
    private func translateData(
        fromChunkDescription: ChunkMemoryLayoutDescription,
        toChunkDescription: ChunkMemoryLayoutDescription,
        data: [UInt8]) -> [UInt8] {
        var translatedData = [UInt8](repeating: 0, count: toChunkDescription.chunkEntrySize)
        rewriteEntityData(
            fromChunkDescription: fromChunkDescription,
            toChunkDescription: toChunkDescription,
            fromData: data,
            toData: &translatedData
        )
        rewriteComponentsData(
            fromChunkDescription: fromChunkDescription,
            toChunkDescription: toChunkDescription,
            fromData: data,
            toData: &translatedData
        )
        return translatedData
    }
    
    private func rewriteEntityData(
        fromChunkDescription: ChunkMemoryLayoutDescription,
        toChunkDescription: ChunkMemoryLayoutDescription,
        fromData: [UInt8],
        toData: inout [UInt8]) {
        rewriteData(
            fromOffset: 0,
            toOffset: 0,
            size: fromChunkDescription.entitySize,
            fromData: fromData,
            toData: &toData
        )
    }
    
    private func rewriteComponentsData(
        fromChunkDescription: ChunkMemoryLayoutDescription,
        toChunkDescription: ChunkMemoryLayoutDescription,
        fromData: [UInt8],
        toData: inout [UInt8]) {
        for componentType in Set(toChunkDescription.componentSizes.keys).union(fromChunkDescription.componentSizes.keys) {
            guard let fromOffset = fromChunkDescription.startingOffsets[componentType],
                let toOffset = toChunkDescription.startingOffsets[componentType],
                let size = toChunkDescription.componentSizes[componentType] else { continue }
            rewriteData(
                fromOffset: fromOffset,
                toOffset: toOffset,
                size: size,
                fromData: fromData,
                toData: &toData)
        }
    }
    
    private func rewriteData(
        fromOffset: Int,
        toOffset: Int,
        size: Int,
        fromData: [UInt8],
        toData: inout [UInt8]) {
        for i in 0..<size {
            toData[i + toOffset] = fromData[i + fromOffset]
        }
    }
}
