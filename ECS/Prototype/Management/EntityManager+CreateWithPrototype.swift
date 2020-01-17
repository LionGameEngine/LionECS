//
//  EntityManager+CreateWithPrototype.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 17/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public extension EntityManager where ComponentManagers: PPrototypeComponentManagers {
    @discardableResult func createEntity(withPrototype prototype: Prototype) throws -> Entity {
        let entity = createEntity()
        let chunk = componentManagers.prototypeComponentManager.existingOrNewChunk(forPrototype: prototype)
        try chunk.manageEntity(entity: entity)
        return entity
    }
}
