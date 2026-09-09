public import Cardinal

extension Repetition where Operation: ~Copyable {
    public enum Error: Swift.Error, Equatable {
        case insufficient(actual: Cardinal)
        case emptyBounds
        case noProgress
        case countOverflow
    }
}
