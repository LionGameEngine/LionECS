// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT




public struct PrototypeQueryResult: PEntityIterable {
    let chunks: [Chunk]
    init(chunks: [Chunk]) {
        self.chunks = chunks
    }

    public func forEach<R1: PComponent>(_ closure: (R1) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent>(_ closure: (Entity, R1) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent>(_ closure: (inout W1) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent>(_ closure: (Entity, inout W1) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent>(_ closure: (R1, R2) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent>(_ closure: (Entity, R1, R2) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent>(_ closure: (inout W1, R2) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent>(_ closure: (Entity, inout W1, R2) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent>(_ closure: (inout W1, inout W2) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent>(_ closure: (Entity, inout W1, inout W2) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (R1, R2, R3) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (Entity, R1, R2, R3) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (inout W1, R2, R3) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent>(_ closure: (Entity, inout W1, R2, R3) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent>(_ closure: (inout W1, inout W2, R3) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent>(_ closure: (Entity, inout W1, inout W2, R3) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent>(_ closure: (inout W1, inout W2, inout W3) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (R1, R2, R3, R4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (Entity, R1, R2, R3, R4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (inout W1, R2, R3, R4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (inout W1, inout W2, R3, R4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (R1, R2, R3, R4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (inout W1, R2, R3, R4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, R9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, R9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, R9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (R1, R2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<R1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, R2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, R2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, R2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, R3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, R3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, R4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, R4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, R5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, R5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, R6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, R6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, R7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, R7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, R8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, R8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, R9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, R9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent, R10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent, R10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9, R10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent, W10: PComponent>(_ closure: (inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9, inout W10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
    public func forEach<W1: PComponent, W2: PComponent, W3: PComponent, W4: PComponent, W5: PComponent, W6: PComponent, W7: PComponent, W8: PComponent, W9: PComponent, W10: PComponent>(_ closure: (Entity, inout W1, inout W2, inout W3, inout W4, inout W5, inout W6, inout W7, inout W8, inout W9, inout W10) -> Void) {
        for chunk in chunks {
            chunk.forEach(closure)
        }
    }
}

//  Copyright © 2020 LionSoftware. All rights reserved.
