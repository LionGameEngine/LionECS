//
//  PComponentAccesorFactory.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 14/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public protocol PComponentAccessorFactory {
    func create<C: PComponent>(_ type: C.Type) -> PComponentAccessor
}
