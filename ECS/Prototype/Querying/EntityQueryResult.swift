//
//  EntityQueryResult.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

public struct EntityQueryResult: PEntityIterable {
    let chunks: [PEntityIterable]
    public init(chunks: [PChunk & PEntityIterable]) {
        self.chunks = chunks
    }
}
