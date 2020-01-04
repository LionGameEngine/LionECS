//
//  Excludes.swift
//  ECS
//
//  Created by Tomasz Lewandowski on 02/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

public struct Excludes<Component: PComponent>: PEntityFilter {
    public var componentIdentifier: ComponentIdentifier {
        return Component.componentIdentifier
    }
    
    public func filter<ComponentManagers: PComponentManagers>(requester: EntityRequester<ComponentManagers>, entities: Set<Entity>) throws -> Set<Entity> {
        return try entities.subtracting(
            requester.getComponentManagers()
                .getExistingManager(withIdentifier: Component.componentIdentifier)
                .getEntities(withComponent: Component.self)
        )
    }
}
