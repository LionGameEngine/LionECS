//
//  ChunkError.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 03/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public enum ChunkError: Error {
    case entityAlreadyExists
    case missingEntity
    case cannotAllocateMemory
    case missingComponent
}
