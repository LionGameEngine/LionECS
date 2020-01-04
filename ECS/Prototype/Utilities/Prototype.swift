//
//  Prototype.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public class Prototype: Hashable, Equatable, Identifiable {
    public typealias Identifier = String
    
    public lazy var id: Identifier = {
        var identifier: Identifier = ""
        return componentIdentifiers.reduce(into: identifier) { (result, componentIdentifier) in
            result += "\(componentIdentifier)"
        }
    }()
    
    let componentIdentifiers: Set<ComponentIdentifier>
    
    public init(componentIdentifiers: Set<ComponentIdentifier>) {
        self.componentIdentifiers = componentIdentifiers
    }
    
    public static func == (lhs: Prototype, rhs: Prototype) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
