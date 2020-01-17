// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT













extension Chunk {

    public func setComponents<R1: PComponent>(entity: Entity, r1: R1) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent>(r1: R1, atIndex index: Int) throws {
        try verify(R1.self)
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
    }

    public func setComponents<R1: PComponent, R2: PComponent>(entity: Entity, r1: R1, r2: R2) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent>(r1: R1, r2: R2, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
    }

    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent>(entity: Entity, r1: R1, r2: R2, r3: R3) throws {
        try verify(entity: entity)
        try setComponents(r1: r1, r2: r2, r3: r3, atIndex: managedEntities[entity]!)
    }
    public func setComponents<R1: PComponent, R2: PComponent, R3: PComponent>(r1: R1, r2: R2, r3: R3, atIndex index: Int) throws {
        try verify(R1.self)
        try verify(R2.self)
        try verify(R3.self)
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
        componentAccessorFactory.create(R3.self).set(component: r3, index: index)
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
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
        componentAccessorFactory.create(R3.self).set(component: r3, index: index)
        componentAccessorFactory.create(R4.self).set(component: r4, index: index)
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
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
        componentAccessorFactory.create(R3.self).set(component: r3, index: index)
        componentAccessorFactory.create(R4.self).set(component: r4, index: index)
        componentAccessorFactory.create(R5.self).set(component: r5, index: index)
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
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
        componentAccessorFactory.create(R3.self).set(component: r3, index: index)
        componentAccessorFactory.create(R4.self).set(component: r4, index: index)
        componentAccessorFactory.create(R5.self).set(component: r5, index: index)
        componentAccessorFactory.create(R6.self).set(component: r6, index: index)
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
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
        componentAccessorFactory.create(R3.self).set(component: r3, index: index)
        componentAccessorFactory.create(R4.self).set(component: r4, index: index)
        componentAccessorFactory.create(R5.self).set(component: r5, index: index)
        componentAccessorFactory.create(R6.self).set(component: r6, index: index)
        componentAccessorFactory.create(R7.self).set(component: r7, index: index)
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
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
        componentAccessorFactory.create(R3.self).set(component: r3, index: index)
        componentAccessorFactory.create(R4.self).set(component: r4, index: index)
        componentAccessorFactory.create(R5.self).set(component: r5, index: index)
        componentAccessorFactory.create(R6.self).set(component: r6, index: index)
        componentAccessorFactory.create(R7.self).set(component: r7, index: index)
        componentAccessorFactory.create(R8.self).set(component: r8, index: index)
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
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
        componentAccessorFactory.create(R3.self).set(component: r3, index: index)
        componentAccessorFactory.create(R4.self).set(component: r4, index: index)
        componentAccessorFactory.create(R5.self).set(component: r5, index: index)
        componentAccessorFactory.create(R6.self).set(component: r6, index: index)
        componentAccessorFactory.create(R7.self).set(component: r7, index: index)
        componentAccessorFactory.create(R8.self).set(component: r8, index: index)
        componentAccessorFactory.create(R9.self).set(component: r9, index: index)
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
        componentAccessorFactory.create(R1.self).set(component: r1, index: index)
        componentAccessorFactory.create(R2.self).set(component: r2, index: index)
        componentAccessorFactory.create(R3.self).set(component: r3, index: index)
        componentAccessorFactory.create(R4.self).set(component: r4, index: index)
        componentAccessorFactory.create(R5.self).set(component: r5, index: index)
        componentAccessorFactory.create(R6.self).set(component: r6, index: index)
        componentAccessorFactory.create(R7.self).set(component: r7, index: index)
        componentAccessorFactory.create(R8.self).set(component: r8, index: index)
        componentAccessorFactory.create(R9.self).set(component: r9, index: index)
        componentAccessorFactory.create(R10.self).set(component: r10, index: index)
    }
}

//  Copyright © 2020 LionSoftware. All rights reserved.
