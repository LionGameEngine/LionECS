// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT













extension Chunk {
    public func getEntitiesWithComponents<R1: PComponent>() throws -> [(Entity, R1)] {
        try verify(R1.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent>() throws -> [(R1)] {
        try verify(R1.self)
        let components = (0..<allocatedEntities).map { index -> (R1) in
            return (
                componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>)] {
        try verify(R1.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent>() throws -> [(UnsafeMutablePointer<R1>)] {
        try verify(R1.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>) in
            return ( componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent>(entity: Entity, r1: R1) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent>(r1: R1, atIndex index: Int) throws {
        try verify(R1.self)
        componentAccessor.set(component: r1, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent>() throws -> [(Entity, R1, R2)] {
        try verify(R1.self)
        try verify(R2.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent>() throws -> [(R1, R2)] {
        try verify(R1.self)
        try verify(R2.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>)] {
        try verify(R1.self)
        try verify(R2.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>)] {
        try verify(R1.self)
        try verify(R2.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent>(entity: Entity, r1: R1, r2: R2) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent>(r1: R1, r2: R2, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent, R3: PComponent>() throws -> [(Entity, R1, R2, R3)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2, R3) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent, R3: PComponent>() throws -> [(R1, R2, R3)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2, R3) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent, R3: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent, R3: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent>(r1: R1, r2: R2, r3: R3, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
        componentAccessor.set(component: r3, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>() throws -> [(Entity, R1, R2, R3, R4)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2, R3, R4) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>() throws -> [(R1, R2, R3, R4)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2, R3, R4) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3, r4: R4) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, r4: r4, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(r1: R1, r2: R2, r3: R3, r4: R4, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
        componentAccessor.set(component: r3, index: index)
        componentAccessor.set(component: r4, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>() throws -> [(Entity, R1, R2, R3, R4, R5)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2, R3, R4, R5) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>() throws -> [(R1, R2, R3, R4, R5)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2, R3, R4, R5) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3, r4: R4, r5: R5) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, r4: r4, r5: r5, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
        componentAccessor.set(component: r3, index: index)
        componentAccessor.set(component: r4, index: index)
        componentAccessor.set(component: r5, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>() throws -> [(Entity, R1, R2, R3, R4, R5, R6)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2, R3, R4, R5, R6) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>() throws -> [(R1, R2, R3, R4, R5, R6)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2, R3, R4, R5, R6) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, r4: r4, r5: r5, r6: r6, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
        componentAccessor.set(component: r3, index: index)
        componentAccessor.set(component: r4, index: index)
        componentAccessor.set(component: r5, index: index)
        componentAccessor.set(component: r6, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>() throws -> [(Entity, R1, R2, R3, R4, R5, R6, R7)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2, R3, R4, R5, R6, R7) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>() throws -> [(R1, R2, R3, R4, R5, R6, R7)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2, R3, R4, R5, R6, R7) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, r7: R7) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, r4: r4, r5: r5, r6: r6, r7: r7, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, r7: R7, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
        componentAccessor.set(component: r3, index: index)
        componentAccessor.set(component: r4, index: index)
        componentAccessor.set(component: r5, index: index)
        componentAccessor.set(component: r6, index: index)
        componentAccessor.set(component: r7, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>() throws -> [(Entity, R1, R2, R3, R4, R5, R6, R7, R8)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2, R3, R4, R5, R6, R7, R8) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>() throws -> [(R1, R2, R3, R4, R5, R6, R7, R8)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2, R3, R4, R5, R6, R7, R8) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, r7: R7, r8: R8) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, r4: r4, r5: r5, r6: r6, r7: r7, r8: r8, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, r7: R7, r8: R8, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
        componentAccessor.set(component: r3, index: index)
        componentAccessor.set(component: r4, index: index)
        componentAccessor.set(component: r5, index: index)
        componentAccessor.set(component: r6, index: index)
        componentAccessor.set(component: r7, index: index)
        componentAccessor.set(component: r8, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>() throws -> [(Entity, R1, R2, R3, R4, R5, R6, R7, R8, R9)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2, R3, R4, R5, R6, R7, R8, R9) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>() throws -> [(R1, R2, R3, R4, R5, R6, R7, R8, R9)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2, R3, R4, R5, R6, R7, R8, R9) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>, UnsafeMutablePointer<R9>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>, UnsafeMutablePointer<R9>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>, UnsafeMutablePointer<R9>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>, UnsafeMutablePointer<R9>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, r7: R7, r8: R8, r9: R9) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, r4: r4, r5: r5, r6: r6, r7: r7, r8: r8, r9: r9, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, r7: R7, r8: R8, r9: R9, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
        componentAccessor.set(component: r3, index: index)
        componentAccessor.set(component: r4, index: index)
        componentAccessor.set(component: r5, index: index)
        componentAccessor.set(component: r6, index: index)
        componentAccessor.set(component: r7, index: index)
        componentAccessor.set(component: r8, index: index)
        componentAccessor.set(component: r9, index: index)
    }
    public func getEntitiesWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>() throws -> [(Entity, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        try verify(R10.self)
        let entitiesWithComponents = (0..<allocatedEntities).map { index -> (Entity, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10) in
            return ( entityAccessor.access(index: index),
                     componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return entitiesWithComponents
    }
    public func getComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>() throws -> [(R1, R2, R3, R4, R5, R6, R7, R8, R9, R10)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        try verify(R10.self)
        let components = (0..<allocatedEntities).map { index -> (R1, R2, R3, R4, R5, R6, R7, R8, R9, R10) in
            return (
                componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index),
        componentAccessor.access(index: index)
            )
        }
        return components
    }
    public func getUnsafeEntityWithComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>() throws -> [(UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>, UnsafeMutablePointer<R9>, UnsafeMutablePointer<R10>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        try verify(R10.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<Entity>, UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>, UnsafeMutablePointer<R9>, UnsafeMutablePointer<R10>) in
            return (
                entityAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
            )
        }
    }

    public func getUnsafeComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>() throws -> [(UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>, UnsafeMutablePointer<R9>, UnsafeMutablePointer<R10>)] {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        try verify(R10.self)
        return (0..<allocatedEntities).map { index -> (UnsafeMutablePointer<R1>, UnsafeMutablePointer<R2>, UnsafeMutablePointer<R3>, UnsafeMutablePointer<R4>, UnsafeMutablePointer<R5>, UnsafeMutablePointer<R6>, UnsafeMutablePointer<R7>, UnsafeMutablePointer<R8>, UnsafeMutablePointer<R9>, UnsafeMutablePointer<R10>) in
            return ( componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index),
                componentAccessor.accessMutable(index: index)
                 )
        }
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, r7: R7, r8: R8, r9: R9, r10: R10) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, r4: r4, r5: r5, r6: r6, r7: r7, r8: r8, r9: r9, r10: r10, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(r1: R1, r2: R2, r3: R3, r4: R4, r5: R5, r6: R6, r7: R7, r8: R8, r9: R9, r10: R10, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        try verify(R4.self)
        try verify(R5.self)
        try verify(R6.self)
        try verify(R7.self)
        try verify(R8.self)
        try verify(R9.self)
        try verify(R10.self)
        componentAccessor.set(component: r1, index: index)
        componentAccessor.set(component: r2, index: index)
        componentAccessor.set(component: r3, index: index)
        componentAccessor.set(component: r4, index: index)
        componentAccessor.set(component: r5, index: index)
        componentAccessor.set(component: r6, index: index)
        componentAccessor.set(component: r7, index: index)
        componentAccessor.set(component: r8, index: index)
        componentAccessor.set(component: r9, index: index)
        componentAccessor.set(component: r10, index: index)
    }
}

//  Copyright © 2020 LionSoftware. All rights reserved.
