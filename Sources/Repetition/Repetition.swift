public struct Repetition<Bounds, Operation: ~Copyable>: ~Copyable {
    public let bounds: Bounds
    public let operation: Operation

    public init(_ bounds: Bounds, operation: consuming Operation) {
        self.bounds = bounds
        self.operation = operation
    }
}

extension Repetition: Copyable where Operation: Copyable {}
