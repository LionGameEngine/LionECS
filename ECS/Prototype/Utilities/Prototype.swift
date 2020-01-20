//
//  Prototype.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public class Prototype: Hashable, Equatable, Identifiable {
    public typealias Identifier = String
    
    public lazy var id: Identifier = {
        var identifier: Identifier = ""
        return componentIdentifiers.reduce(into: identifier) { (result, componentIdentifier) in
            result += "\(componentIdentifier)"
        }
    }()
    
    var componentIdentifiers: Set<ComponentIdentifier> {
        return layoutDescription.componentTypes
    }
    let layoutDescription: ChunkMemoryLayoutDescription
    
    public init(layoutDescription: ChunkMemoryLayoutDescription) {
        self.layoutDescription = layoutDescription
    }
    
    public static func == (lhs: Prototype, rhs: Prototype) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
