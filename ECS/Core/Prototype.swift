//
//  Prototype.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct Prototype {
    public typealias Identifier = String
    
    public lazy var identifier: Identifier = {
        var identifier: Identifier = ""
        return filters.reduce(into: identifier) { (result, filter) in
            result += "\(filter.componentIdentifier)"
        }
    }()
    
    let filters: [PEntityFilter]
    
    public init(filters: [PEntityFilter]) {
        self.filters = filters
    }
}
