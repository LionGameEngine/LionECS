//
//  ComponentLayoutDescription.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 06/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public struct ComponentLayoutDescription: Equatable {
    public let offset: Int
    public let size: Int
    
    public func with(offset: Int) -> ComponentLayoutDescription {
        return ComponentLayoutDescription(offset: offset, size: size)
    }
}
