//
//  PrototypeQueryResult.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct PrototypeQueryResult: PEntityIterable {
    let chunks: [PEntityIterable]
    public init(chunks: [PChunk & PEntityIterable]) {
        self.chunks = chunks
    }
}
