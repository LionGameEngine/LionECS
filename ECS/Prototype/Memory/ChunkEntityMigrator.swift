//
//  ChunkEntityMigrator.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class ChunkEntityMigrator: PChunkEntityMigrator {
    public func migrate(
        fromChunk: PChunk,
        toChunk: PChunk,
        entity: Entity) throws {
        let data = try fromChunk.getEntityData(entity)
        let translatedData = translateData(fromChunkDescription: fromChunk.memoryLayoutDescription, toChunkDescription: toChunk.memoryLayoutDescription, data: data)
        try toChunk.manageEntity(entity: entity)
        try toChunk.setEntityData(entity, data: translatedData)
        try fromChunk.unmanageEntity(entity)
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
        for componentType in Set(toChunkDescription.getComponentTypes()).union(fromChunkDescription.getComponentTypes()) {
            guard let fromOffset = fromChunkDescription.offset(componentIdentifier: componentType),
                let toOffset = toChunkDescription.offset(componentIdentifier: componentType),
                let size = toChunkDescription.size(componentIdentifier: componentType) else { continue }
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
        toData.withUnsafeMutableBufferPointer({ (toPointer) -> Void in
            fromData.withUnsafeBufferPointer { (fromPointer) -> Void in
                var i = 0
                while (i < size) {
                    toPointer[i + toOffset] = fromPointer[i + fromOffset]
                    i += 1
                }
            }
        })
    }
}
