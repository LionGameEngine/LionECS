//
//  Component.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

// sourcery: AutoMockable
public protocol PComponent {
    static var componentIdentifier: ComponentIdentifier { get }
}

extension PComponent {
    public static var componentIdentifier: ComponentIdentifier {
        return ComponentIdentifier(Self.self)
    }
}
