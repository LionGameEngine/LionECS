//
//  ComponentAccessorFactory.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 14/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public final class ComponentAccessorFactory: PComponentAccessorFactory {
    private let memoryLayoutDescription: ChunkMemoryLayoutDescription
    private let entries: UnsafeMutableRawBufferPointer
    
    public init(memoryLayoutDescription: ChunkMemoryLayoutDescription, entries: UnsafeMutableRawBufferPointer) {
        self.memoryLayoutDescription = memoryLayoutDescription
        self.entries = entries
    }

    public func create<C: PComponent>(_ type: C.Type) -> PComponentAccessor {
        return ComponentAccessor(
            memoryLayoutDescription: memoryLayoutDescription,
            entries: entries,
            offset: memoryLayoutDescription.offset(C.self),
            size: memoryLayoutDescription.size(C.self))
    }
}
