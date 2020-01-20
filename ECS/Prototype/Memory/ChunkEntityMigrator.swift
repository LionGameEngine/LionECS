//
//  ChunkEntityMigrator.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 04/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import Foundation

public final class ChunkEntityMigrator: PChunkEntityMigrator {
    private let shouldFreeMemory: Bool
    
    init(shouldFreeMemory: Bool) {
        self.shouldFreeMemory = shouldFreeMemory
    }
    
    public func migrate(
        fromChunk: PChunk,
        toChunk: PChunk,
        entity: Entity) throws {
        let data = fromChunk.memoryManager.alloc(count: 1)
        let toData = toChunk.memoryManager.alloc(count: 1)
        defer {
            if shouldFreeMemory {
                fromChunk.memoryManager.free(pointer: UnsafeRawBufferPointer(data))
                toChunk.memoryManager.free(pointer: UnsafeRawBufferPointer(toData))
            }
        }
        try fromChunk.copyEntityData(entity, into: data)
        translateData(
            fromChunkDescription: fromChunk.memoryLayoutDescription,
            toChunkDescription: toChunk.memoryLayoutDescription,
            data: UnsafeRawBufferPointer(data),
            toData: toData)
        try toChunk.manageEntity(entity: entity)
        try toChunk.setEntityData(entity, dataPointer: UnsafeRawBufferPointer(toData))
        try fromChunk.unmanageEntity(entity)
    }
    
    private func translateData(
        fromChunkDescription: ChunkMemoryLayoutDescription,
        toChunkDescription: ChunkMemoryLayoutDescription,
        data: UnsafeRawBufferPointer,
        toData: UnsafeMutableRawBufferPointer) {
        rewriteEntityData(
            fromChunkDescription: fromChunkDescription,
            toChunkDescription: toChunkDescription,
            fromData: data,
            toData: toData
        )
        rewriteComponentsData(
            fromChunkDescription: fromChunkDescription,
            toChunkDescription: toChunkDescription,
            fromData: data,
            toData: toData
        )
    }
    
    private func rewriteEntityData(
        fromChunkDescription: ChunkMemoryLayoutDescription,
        toChunkDescription: ChunkMemoryLayoutDescription,
        fromData: UnsafeRawBufferPointer,
        toData: UnsafeMutableRawBufferPointer) {
        rewriteData(
            fromOffset: 0,
            toOffset: 0,
            size: fromChunkDescription.entitySize,
            fromData: fromData,
            toData: toData
        )
    }
    
    private func rewriteComponentsData(
        fromChunkDescription: ChunkMemoryLayoutDescription,
        toChunkDescription: ChunkMemoryLayoutDescription,
        fromData: UnsafeRawBufferPointer,
        toData: UnsafeMutableRawBufferPointer) {
        for componentType in Set(toChunkDescription.getComponentTypes()).union(fromChunkDescription.getComponentTypes()) {
            guard let fromOffset = fromChunkDescription.offset(componentIdentifier: componentType),
                let toOffset = toChunkDescription.offset(componentIdentifier: componentType),
                let size = toChunkDescription.size(componentIdentifier: componentType) else { continue }
            rewriteData(
                fromOffset: fromOffset,
                toOffset: toOffset,
                size: size,
                fromData: fromData,
                toData: toData)
        }
    }
    
    private func rewriteData(
        fromOffset: Int,
        toOffset: Int,
        size: Int,
        fromData: UnsafeRawBufferPointer,
        toData: UnsafeMutableRawBufferPointer) {
        memcpy(toData.baseAddress! + toOffset, fromData.baseAddress! + fromOffset, size)
    }
}
