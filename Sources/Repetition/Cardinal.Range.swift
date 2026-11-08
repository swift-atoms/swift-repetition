public import Cardinal

extension Cardinal.Range {
    public func end<Position>(from start: Position, advance: (Position) -> Position?) throws(Repetition<Self, Void>.Error) -> Position {
        guard contains(minimum) else { throw .emptyBounds }
        var end = start
        var count = Cardinal.zero
        while permitsAnother(after: count), let next = advance(end) {
            guard count.rawValue != UInt.max else { throw .countOverflow }
            end = next
            count = Cardinal(count.rawValue + 1)
        }
        guard contains(count) else { throw .insufficient(actual: count) }
        return end
    }
}
