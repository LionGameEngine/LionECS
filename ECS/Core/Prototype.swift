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
        return filters.reduce(into: identifier) { (result, filter) in
            result += "\(filter.componentIdentifier)"
        }
    }()
    
    let filters: [PEntityFilter]
    
    public init(filters: [PEntityFilter]) {
        self.filters = filters
    }
    
    public static func == (lhs: Prototype, rhs: Prototype) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
