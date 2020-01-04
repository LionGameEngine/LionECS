// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



public struct Requires0ComponentNaiveQuery<ComponentManagers: PComponentManagers>: PEntityQuery {
    public typealias Result = EntityQueryResult<()>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = ()
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return exclusionFilters
    }
}
public struct Requires1ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>()] + exclusionFilters
    }
}
public struct Requires2ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>()] + exclusionFilters
    }
}
public struct Requires3ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
    	let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r3Components: [Entity: R3] = try r3Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!, r3Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>(), Requires<R3>()] + exclusionFilters
    }
}
public struct Requires4ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3, R4)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
    	let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r3Components: [Entity: R3] = try r3Manager.getEntitiesWithComponents()
    	let r4Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R4.componentIdentifier)
        let r4Components: [Entity: R4] = try r4Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!, r3Components[entity]!, r4Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>(), Requires<R3>(), Requires<R4>()] + exclusionFilters
    }
}
public struct Requires5ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3, R4, R5)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
    	let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r3Components: [Entity: R3] = try r3Manager.getEntitiesWithComponents()
    	let r4Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R4.componentIdentifier)
        let r4Components: [Entity: R4] = try r4Manager.getEntitiesWithComponents()
    	let r5Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R5.componentIdentifier)
        let r5Components: [Entity: R5] = try r5Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!, r3Components[entity]!, r4Components[entity]!, r5Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>(), Requires<R3>(), Requires<R4>(), Requires<R5>()] + exclusionFilters
    }
}
public struct Requires6ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3, R4, R5, R6)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
    	let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r3Components: [Entity: R3] = try r3Manager.getEntitiesWithComponents()
    	let r4Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R4.componentIdentifier)
        let r4Components: [Entity: R4] = try r4Manager.getEntitiesWithComponents()
    	let r5Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R5.componentIdentifier)
        let r5Components: [Entity: R5] = try r5Manager.getEntitiesWithComponents()
    	let r6Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R6.componentIdentifier)
        let r6Components: [Entity: R6] = try r6Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!, r3Components[entity]!, r4Components[entity]!, r5Components[entity]!, r6Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>(), Requires<R3>(), Requires<R4>(), Requires<R5>(), Requires<R6>()] + exclusionFilters
    }
}
public struct Requires7ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3, R4, R5, R6, R7)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
    	let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r3Components: [Entity: R3] = try r3Manager.getEntitiesWithComponents()
    	let r4Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R4.componentIdentifier)
        let r4Components: [Entity: R4] = try r4Manager.getEntitiesWithComponents()
    	let r5Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R5.componentIdentifier)
        let r5Components: [Entity: R5] = try r5Manager.getEntitiesWithComponents()
    	let r6Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R6.componentIdentifier)
        let r6Components: [Entity: R6] = try r6Manager.getEntitiesWithComponents()
    	let r7Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R7.componentIdentifier)
        let r7Components: [Entity: R7] = try r7Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!, r3Components[entity]!, r4Components[entity]!, r5Components[entity]!, r6Components[entity]!, r7Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>(), Requires<R3>(), Requires<R4>(), Requires<R5>(), Requires<R6>(), Requires<R7>()] + exclusionFilters
    }
}
public struct Requires8ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3, R4, R5, R6, R7, R8)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
    	let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r3Components: [Entity: R3] = try r3Manager.getEntitiesWithComponents()
    	let r4Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R4.componentIdentifier)
        let r4Components: [Entity: R4] = try r4Manager.getEntitiesWithComponents()
    	let r5Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R5.componentIdentifier)
        let r5Components: [Entity: R5] = try r5Manager.getEntitiesWithComponents()
    	let r6Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R6.componentIdentifier)
        let r6Components: [Entity: R6] = try r6Manager.getEntitiesWithComponents()
    	let r7Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R7.componentIdentifier)
        let r7Components: [Entity: R7] = try r7Manager.getEntitiesWithComponents()
    	let r8Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R8.componentIdentifier)
        let r8Components: [Entity: R8] = try r8Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!, r3Components[entity]!, r4Components[entity]!, r5Components[entity]!, r6Components[entity]!, r7Components[entity]!, r8Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>(), Requires<R3>(), Requires<R4>(), Requires<R5>(), Requires<R6>(), Requires<R7>(), Requires<R8>()] + exclusionFilters
    }
}
public struct Requires9ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3, R4, R5, R6, R7, R8, R9)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
    	let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r3Components: [Entity: R3] = try r3Manager.getEntitiesWithComponents()
    	let r4Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R4.componentIdentifier)
        let r4Components: [Entity: R4] = try r4Manager.getEntitiesWithComponents()
    	let r5Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R5.componentIdentifier)
        let r5Components: [Entity: R5] = try r5Manager.getEntitiesWithComponents()
    	let r6Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R6.componentIdentifier)
        let r6Components: [Entity: R6] = try r6Manager.getEntitiesWithComponents()
    	let r7Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R7.componentIdentifier)
        let r7Components: [Entity: R7] = try r7Manager.getEntitiesWithComponents()
    	let r8Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R8.componentIdentifier)
        let r8Components: [Entity: R8] = try r8Manager.getEntitiesWithComponents()
    	let r9Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R9.componentIdentifier)
        let r9Components: [Entity: R9] = try r9Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!, r3Components[entity]!, r4Components[entity]!, r5Components[entity]!, r6Components[entity]!, r7Components[entity]!, r8Components[entity]!, r9Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>(), Requires<R3>(), Requires<R4>(), Requires<R5>(), Requires<R6>(), Requires<R7>(), Requires<R8>(), Requires<R9>()] + exclusionFilters
    }
}
public struct Requires10ComponentNaiveQuery<ComponentManagers: PComponentManagers, R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>: PEntityQuery {
    public typealias Result = EntityQueryResult<(R1, R2, R3, R4, R5, R6, R7, R8, R9, R10)>

    private var exclusionFilters: [PEntityFilter]
    public init(exclusionFilters: [PEntityFilter] = []) {
        self.exclusionFilters = exclusionFilters
    }

    public func resolveWith(requester: EntityRequester<ComponentManagers>) throws -> Result {
    	let r1Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R1.componentIdentifier)
        let r1Components: [Entity: R1] = try r1Manager.getEntitiesWithComponents()
    	let r2Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R2.componentIdentifier)
        let r2Components: [Entity: R2] = try r2Manager.getEntitiesWithComponents()
    	let r3Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R3.componentIdentifier)
        let r3Components: [Entity: R3] = try r3Manager.getEntitiesWithComponents()
    	let r4Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R4.componentIdentifier)
        let r4Components: [Entity: R4] = try r4Manager.getEntitiesWithComponents()
    	let r5Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R5.componentIdentifier)
        let r5Components: [Entity: R5] = try r5Manager.getEntitiesWithComponents()
    	let r6Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R6.componentIdentifier)
        let r6Components: [Entity: R6] = try r6Manager.getEntitiesWithComponents()
    	let r7Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R7.componentIdentifier)
        let r7Components: [Entity: R7] = try r7Manager.getEntitiesWithComponents()
    	let r8Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R8.componentIdentifier)
        let r8Components: [Entity: R8] = try r8Manager.getEntitiesWithComponents()
    	let r9Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R9.componentIdentifier)
        let r9Components: [Entity: R9] = try r9Manager.getEntitiesWithComponents()
    	let r10Manager = try requester.getComponentManagers().getExistingManager(withIdentifier: R10.componentIdentifier)
        let r10Components: [Entity: R10] = try r10Manager.getEntitiesWithComponents()
        var result: [Entity: Result.Components] = [:]
        for entity in try getFilteredEntities(requester: requester) {
        	result[entity] = (r1Components[entity]!, r2Components[entity]!, r3Components[entity]!, r4Components[entity]!, r5Components[entity]!, r6Components[entity]!, r7Components[entity]!, r8Components[entity]!, r9Components[entity]!, r10Components[entity]!)
        }
        return Result(result)
    }
    public func getFilters() -> [PEntityFilter] {
        return [Requires<R1>(), Requires<R2>(), Requires<R3>(), Requires<R4>(), Requires<R5>(), Requires<R6>(), Requires<R7>(), Requires<R8>(), Requires<R9>(), Requires<R10>()] + exclusionFilters
    }
}

//  Copyright © 2020 LionSoftware. All rights reserved.
