//
//  Chunk.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public class Chunk {
    private(set) var memoryLayoutDescription: ChunkMemoryLayoutDescription
    var numberOfElements = 2
    var freeIndicies: Set<Int> = Set([0, 1])
    var managedEntities: [Entity: Int] = [:]
    var entries: UnsafeMutableRawBufferPointer!
    
    public init(memoryLayoutDescription: ChunkMemoryLayoutDescription) {
        self.memoryLayoutDescription = memoryLayoutDescription
        entries = UnsafeMutableRawBufferPointer.allocate(byteCount: numberOfElements*self.memoryLayoutDescription.chunkEntrySize, alignment: 0)
        entries.initializeMemory(as: UInt8.self, repeating: 0)
    }
    
    public func getEntities() -> [Entity] {
        let entities = (0..<numberOfElements).map { entries.load(fromByteOffset: $0 * memoryLayoutDescription.chunkEntrySize, as: Entity.self) }
        return entities
    }
    
    public func createEntity(entity: Entity) {
        guard !managedEntities.keys.contains(entity) else { return }
        guard let index = freeIndicies.first else { return }
        freeIndicies.remove(index)
        managedEntities[entity] = index
        clearChunkEntry(atIndex: index)
        setEntity(entity, atIndex: index)
    }
    
    public func setEntity(_ entity: Entity, atIndex index: Int) {
        let entityAccessor = (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize).assumingMemoryBound(to: Entity.self)
        entityAccessor.assign(repeating: entity, count: 1)
    }
    
    public func removeEntity(_ entity: Entity) {
        guard let index = managedEntities[entity] else { return }
        freeIndicies.insert(index)
        managedEntities.removeValue(forKey: entity)
        clearChunkEntry(atIndex: index)
    }
    
    public func clearChunkEntry(atIndex index: Int) {
        (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize).initializeMemory(as: UInt8.self, repeating: 0, count: memoryLayoutDescription.chunkEntrySize)
    }
    
    deinit {
        entries.deallocate()
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
        let entitiesWithComponents = (0..<numberOfElements).map { index -> (Entity, R1) in
            let entityAccessor = (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize).assumingMemoryBound(to: Entity.self)
            let r1Accessor = (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize + memoryLayoutDescription.offset(R1.self)).assumingMemoryBound(to: R1.self)
            return ( entityAccessor.pointee,
              r1Accessor.pointee
            )
        }
        return entitiesWithComponents
    }
    
    public func getComponents<R1: PComponent>() throws -> [(R1)] {
        try verify(R1.self)
        let components = (0..<numberOfElements).map { index -> (R1) in
            let r1Accessor = (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize + memoryLayoutDescription.offset(R1.self)).assumingMemoryBound(to: R1.self)
            return (
              r1Accessor.pointee
            )
        }
        return components
    }
    
    public func setComponent<R1: PComponent>(entity: Entity, r1: R1) throws {
        try verify(entity: entity)
        try setComponent(r1, atIndex: managedEntities[entity]!)
    }
    
    public func setComponent<R1: PComponent>(_ r1: R1, atIndex index: Int) throws {
        try verify(R1.self)
        let r1Accessor = (entries.baseAddress! + index * memoryLayoutDescription.chunkEntrySize + memoryLayoutDescription.offset(R1.self)).assumingMemoryBound(to: R1.self)
        r1Accessor.assign(repeating: r1, count: 1)
    }
}
