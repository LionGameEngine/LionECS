//
//  ComponentManagerError.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public enum ComponentManagerError: Error {
    case invalidComponentType
    case entityMissing
    case componentMissing
    case managerMissing
    case alreadyHasComponent
}
