//
//  Chunk.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public final class Chunk {
    let memoryLayoutDescription: ChunkMemoryLayoutDescription
    var allocatedEntities: Int = 1
    var freeIndicies: Set<Int> = Set(0..<1)
    var managedEntities: [Entity: Int] = [:]
    var entries: UnsafeMutableRawBufferPointer!
    var entityAccessor: PEntityAccessor
    var componentAccessor: PComponentAccessor
    let memoryManager: PMemoryManager
    
    public init(
        memoryLayoutDescription: ChunkMemoryLayoutDescription,
        memoryManager: PMemoryManager? = nil,
        entityAccessor: PEntityAccessor? = nil,
        componentAccessor: PComponentAccessor? = nil) {
        self.memoryLayoutDescription = memoryLayoutDescription
        self.memoryManager = memoryManager ?? ChunkMemoryManager(memoryLayoutDescription: memoryLayoutDescription)
        let entries = self.memoryManager.alloc(count: allocatedEntities)
        self.memoryManager.clear(pointer: entries)
        self.entityAccessor = entityAccessor ?? EntityAccessor(memoryLayoutDescription: memoryLayoutDescription, entries: entries)
        self.componentAccessor = componentAccessor ?? ComponentAccessor(memoryLayoutDescription: memoryLayoutDescription, entries: entries)
        self.entries = entries
    }
    
    public func getEntities() -> [Entity] {
        let entities = (0..<allocatedEntities).map { entityAccessor.access(index: $0) }
        return entities
    }
    
    public func createEntity(entity: Entity, wasReallocated: Bool = false) throws {
        guard !managedEntities.keys.contains(entity) else { return }
        guard let index = freeIndicies.first else {
            if !wasReallocated {
                growChunk()
                try createEntity(entity: entity, wasReallocated: true)
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
    
    public func growChunk() {
        let newEntries = memoryManager.alloc(count: allocatedEntities * 2)
        memoryManager.clear(pointer: newEntries)
        memoryManager.move(from: entries, to: newEntries)
        memoryManager.free(pointer: entries)
        
        entityAccessor.entries = newEntries
        componentAccessor.entries = newEntries
        entries = newEntries
        freeIndicies = Set<Int>(allocatedEntities..<allocatedEntities*2)
        allocatedEntities *= 2
    }
    
    public func setEntity(_ entity: Entity, atIndex index: Int) {
        let entityAccessor = self.entityAccessor.accessMutable(index: index)
        entityAccessor.assign(repeating: entity, count: 1)
    }
    
    public func removeEntity(_ entity: Entity) {
        guard let index = managedEntities[entity] else { return }
        freeIndicies.insert(index)
        managedEntities.removeValue(forKey: entity)
        entityAccessor.clear(index: index)
    }
    
    deinit {
        memoryManager.clear(pointer: entries)
    }
    
    func verify<R1: PComponent>(_ type: R1.Type) throws {
        guard memoryLayoutDescription.hasComponent(R1.self) else { throw ComponentManagerError.componentMissing }
    }

    func verify(entity: Entity) throws {
        guard managedEntities.keys.contains(entity) else { throw ComponentManagerError.entityMissing }
    }
}

extension Chunk {
    public func getEntitiesWithComponents<R1: PComponent>() throws -> [(Entity, R1)] {
        try verify(R1.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    
    public func getComponents<R1: PComponent>() throws -> [(R1)] {
        try verify(R1.self)
        let components = (0..<allocatedEntities).map { index -> (R1) in
            return (
                componentAccessor.access(index: index)
            )
        }
        return components
    }
    
    public func getUnsafeEntityWithComponents<R1: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>)] {
        try verify(R1.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>) in
            return ( entityAccessor.accessMutable(index: index), componentAccessor.accessMutable(index: index) )
        }
    }
    
    public func setComponent<R1: PComponent>(entity: Entity, r1: R1) throws {
        try verify(entity: entity)
        try setComponent(r1, atIndex: managedEntities[entity]!)
    }
    
    public func setComponent<R1: PComponent>(_ r1: R1, atIndex index: Int) throws {
        try verify(R1.self)
        let r1Accessor: UnsafeMutablePointer<R1> = componentAccessor.accessMutable(index: index)
        r1Accessor.assign(repeating: r1, count: 1)
    }
}
