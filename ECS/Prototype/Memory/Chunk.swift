//
//  Chunk.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class Chunk: PChunk {
    public let prototype: Prototype
    public var memoryLayoutDescription: ChunkMemoryLayoutDescription {
        prototype.layoutDescription
    }
    public let memoryManager: PMemoryManager
    var allocatedEntities: Int {
        return memoryBlob.blobItemsCount
    }
    var freeIndicies: Set<Int> = Set(0..<1024)
    var managedEntities: [Entity: Int] = [:]
    var entityAccessor: PEntityAccessor
    var componentAccessorFactory: PComponentAccessorFactory
    private let entityDataAccessor: PEntityDataAccessor
    private let memoryBlob: ManagedMemoryBlob
    
    public init(
        prototype: Prototype,
        memoryManager: PMemoryManager? = nil,
        entityAccessor: PEntityAccessor? = nil,
        entityDataAccessor: PEntityDataAccessor? = nil,
        componentAccessorFactory: PComponentAccessorFactory? = nil) {
        self.prototype = prototype
        let memManager = memoryManager ?? ChunkMemoryManager(memoryLayoutDescription: prototype.layoutDescription)
        self.memoryManager = memManager
        let memoryBlob = ManagedMemoryBlob(memoryManager: memManager)
        self.memoryBlob = memoryBlob
        self.entityAccessor = entityAccessor ?? EntityAccessor(memoryLayoutDescription: prototype.layoutDescription, entries: memoryBlob.pointer)
        self.componentAccessorFactory = componentAccessorFactory ?? ComponentAccessorFactory(memoryLayoutDescription: prototype.layoutDescription, entries: memoryBlob.pointer)
        self.entityDataAccessor = entityDataAccessor ?? EntityDataAccessor(memoryLayoutDescription: prototype.layoutDescription, entries: memoryBlob.pointer)
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
    
    public func copyEntityData(_ entity: Entity, into: UnsafeMutableRawBufferPointer) throws {
        try verify(entity: entity)
        let index = managedEntities[entity]!
        entityDataAccessor.copyEntityData(index: index, into: into)
    }
        
    public func setEntityData(_ entity: Entity, dataPointer: UnsafeRawBufferPointer) throws {
        try verify(entity: entity)
        let index = managedEntities[entity]!
        entityDataAccessor.set(entityDataPointer: dataPointer, index: index)
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
        entityDataAccessor.clear(index: index)
        setEntity(entity, atIndex: index)
    }
    
    public func getEntitiesWithComponents<Component>() throws -> [(entity: Entity, component: Component)] where Component: PComponent {
        try verify(Component.self)
        return (0..<allocatedEntities).map { (entity: entityAccessor.access(index: $0), component: componentAccessorFactory.create(Component.self).access(index: $0)) }
    }
}
