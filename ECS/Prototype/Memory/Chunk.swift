//
//  Chunk.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class Chunk: PChunk {
    public let prototype: Prototype
    public let memoryLayoutDescription: ChunkMemoryLayoutDescription
    var allocatedEntities: Int = 1024
    var freeIndicies: Set<Int> = Set(0..<1024)
    var managedEntities: [Entity: Int] = [:]
    var entries: UnsafeMutableRawBufferPointer!
    var entityAccessor: PEntityAccessor
    var componentAccessor: PComponentAccessor
    let entityDataAccessor: PEntityDataAccessor
    let memoryManager: PMemoryManager
    
    public init(
        prototype: Prototype,
        memoryLayoutDescription: ChunkMemoryLayoutDescription,
        memoryManager: PMemoryManager? = nil,
        entityAccessor: PEntityAccessor? = nil,
        entityDataAccessor: PEntityDataAccessor? = nil,
        componentAccessor: PComponentAccessor? = nil) {
        self.prototype = prototype
        self.memoryLayoutDescription = memoryLayoutDescription
        self.memoryManager = memoryManager ?? ChunkMemoryManager(memoryLayoutDescription: memoryLayoutDescription)
        let entries = self.memoryManager.alloc(count: allocatedEntities)
        self.memoryManager.clear(pointer: entries)
        self.entityAccessor = entityAccessor ?? EntityAccessor(memoryLayoutDescription: memoryLayoutDescription, entries: entries)
        self.componentAccessor = componentAccessor ?? ComponentAccessor(memoryLayoutDescription: memoryLayoutDescription, entries: entries)
        self.entityDataAccessor = entityDataAccessor ?? EntityDataAccessor(memoryLayoutDescription: memoryLayoutDescription, entries: entries)
        self.entries = entries
    }
    
    deinit {
        memoryManager.clear(pointer: entries)
    }
    
    public func getEntities() -> [Entity] {
        let entities = (0..<allocatedEntities).map { entityAccessor.access(index: $0) }
        return entities
    }
    
    public func managesEntity(entity: Entity) -> Bool {
        return managedEntities[entity] != nil
    }
    
    public func setEntity(_ entity: Entity, atIndex index: Int) {
        entityAccessor.set(entity: entity, index: index)
    }
    
    public func manageEntity(entity: Entity) throws {
        try manageEntityAndAllocateChunkIfNeeded(entity: entity, wasReallocated: false)
    }
    
    public func unmanageEntity(_ entity: Entity) throws {
        guard let index = managedEntities[entity] else { throw ChunkError.missingEntity }
        freeIndicies.insert(index)
        managedEntities.removeValue(forKey: entity)
        entityDataAccessor.clear(index: index)
    }
    
    public func getEntityData(_ entity: Entity) throws -> [UInt8] {
        try verify(entity: entity)
        let index = managedEntities[entity]!
        return entityDataAccessor.access(index: index)
    }
    
    public func setEntityData(_ entity: Entity, data: [UInt8]) throws {
        try verify(entity: entity)
        let index = managedEntities[entity]!
        entityDataAccessor.set(entityData: data, index: index)
    }
    
    func verify<R1: PComponent>(_ type: R1.Type) throws {
        guard memoryLayoutDescription.hasComponent(R1.self) else { throw ChunkError.missingComponent }
    }

    func verify(entity: Entity) throws {
        guard managedEntities[entity] != nil else { throw ChunkError.missingEntity }
    }
    
    private func manageEntityAndAllocateChunkIfNeeded(entity: Entity, wasReallocated: Bool = false) throws {
        guard !managesEntity(entity: entity) else { throw ChunkError.entityAlreadyExists }
        guard let index = freeIndicies.first else {
            if !wasReallocated {
                try manageEntityAndAllocateChunkIfNeeded(entity: entity, wasReallocated: true)
            } else {
                throw ChunkError.cannotAllocateMemory
            }
            return
        }
        freeIndicies.remove(index)
        managedEntities[entity] = index
        entityAccessor.clear(index: index)
        setEntity(entity, atIndex: index)
    }
}
