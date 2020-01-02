//
//  ComponentManagerError.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public enum ComponentManagerError: Error {
    case invalidComponentType
    case componentMissing
    case managerMissing
}
