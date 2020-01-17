// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT






extension Chunk: PEntityIterable {
    public func forEach<R1: PComponent>(_ closure: (R1) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent>(_ closure: (Entity, R1) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent>(_ closure: (inout W1) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent>(_ closure: (Entity, inout W1) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent>(_ closure: (R1, R2) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent>(_ closure: (Entity, R1, R2) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent>(_ closure: (inout W1, R2) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent>(_ closure: (Entity, inout W1, R2) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent>(_ closure: (inout W1, inout W2) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent>(_ closure: (Entity, inout W1, inout W2) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (R1, R2, R3) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (Entity, R1, R2, R3) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (inout W1, R2, R3) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (Entity, inout W1, R2, R3) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent>(_ closure: (inout W1, inout W2, R3) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent>(_ closure: (Entity, inout W1, inout W2, R3) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent>(_ closure: (inout W1, inout W2, inout W3) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (R1, R2, R3, R4) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (Entity, R1, R2, R3, R4) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (inout W1, R2, R3, R4) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (inout W1, inout W2, R3, R4) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (R1, R2, R3, R4, R5) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (inout W1, R2, R3, R4, R5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6, R7) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6, R7) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index),
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                r7Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                r7Accessor.access(index: index),
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                r8Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                r8Accessor.access(index: index),
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, R9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                r9Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let w9Accessor = componentAccessorFactory.create(W9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                &w9Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let w9Accessor = componentAccessorFactory.create(W9.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                &w9Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let r1Accessor = componentAccessorFactory.create(R1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    r1Accessor.access(index: index),
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let r2Accessor = componentAccessorFactory.create(R2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                r2Accessor.access(index: index),
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let r3Accessor = componentAccessorFactory.create(R3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                r3Accessor.access(index: index),
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let r4Accessor = componentAccessorFactory.create(R4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                r4Accessor.access(index: index),
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let r5Accessor = componentAccessorFactory.create(R5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                r5Accessor.access(index: index),
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let r6Accessor = componentAccessorFactory.create(R6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                r6Accessor.access(index: index),
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let r7Accessor = componentAccessorFactory.create(R7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                r7Accessor.access(index: index),
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let r8Accessor = componentAccessorFactory.create(R8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                r8Accessor.access(index: index),
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, R9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let r9Accessor = componentAccessorFactory.create(R9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                r9Accessor.access(index: index),
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let w9Accessor = componentAccessorFactory.create(W9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                &w9Accessor.accessMutable(index: index).pointee,
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9, R10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let w9Accessor = componentAccessorFactory.create(W9.self)
        let r10Accessor = componentAccessorFactory.create(R10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                &w9Accessor.accessMutable(index: index).pointee,
                r10Accessor.access(index: index))
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent, W10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9, inout W10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let w9Accessor = componentAccessorFactory.create(W9.self)
        let w10Accessor = componentAccessorFactory.create(W10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(&w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                &w9Accessor.accessMutable(index: index).pointee,
                &w10Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent, W10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9, inout W10) -> Void) {
        var index = 0
        let w1Accessor = componentAccessorFactory.create(W1.self)
        let w2Accessor = componentAccessorFactory.create(W2.self)
        let w3Accessor = componentAccessorFactory.create(W3.self)
        let w4Accessor = componentAccessorFactory.create(W4.self)
        let w5Accessor = componentAccessorFactory.create(W5.self)
        let w6Accessor = componentAccessorFactory.create(W6.self)
        let w7Accessor = componentAccessorFactory.create(W7.self)
        let w8Accessor = componentAccessorFactory.create(W8.self)
        let w9Accessor = componentAccessorFactory.create(W9.self)
        let w10Accessor = componentAccessorFactory.create(W10.self)
        while index < allocatedEntities {
            let entity = entityAccessor.access(index: index)
            guard !entity.isNull else { return }
            closure(entity,
                    &w1Accessor.accessMutable(index: index).pointee,
                &w2Accessor.accessMutable(index: index).pointee,
                &w3Accessor.accessMutable(index: index).pointee,
                &w4Accessor.accessMutable(index: index).pointee,
                &w5Accessor.accessMutable(index: index).pointee,
                &w6Accessor.accessMutable(index: index).pointee,
                &w7Accessor.accessMutable(index: index).pointee,
                &w8Accessor.accessMutable(index: index).pointee,
                &w9Accessor.accessMutable(index: index).pointee,
                &w10Accessor.accessMutable(index: index).pointee)
            index += 1
        }
    }
}

//  Copyright © 2020 LionSoftware. All rights reserved.
