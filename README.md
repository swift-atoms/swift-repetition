# swift-repetition

Use this package when you need to apply a step a bounded number of times, such as matching a quantified pattern over positions in input. Pair the bounds with the repeated thing in `Repetition<Bounds, Operation>`, and find where a repetition ends with `Cardinal.Range.end(from:advance:)`. The bounds themselves come from `Cardinal.Range` in swift-cardinal.

## Laws

- `end(from:advance:)` is greedy and never backtracks: it calls `advance` until it returns `nil` or the count reaches the range's upper limit, and returns the last position reached. Once the upper limit is reached, `advance` is not called again; once `advance` returns `nil`, it is not called again.
- Every non-`nil` result of `advance` counts as one repetition, even when it returns the same position.
- A range that does not contain its own lower limit (an empty half-open range) fails before `advance` is ever called.
- If the steps run out before the count reaches the range, the failure carries the count actually reached.
- An unbounded range fails once the count would pass `UInt.max`.
- Zero repetitions succeed when the range contains zero, returning `start` unchanged.
