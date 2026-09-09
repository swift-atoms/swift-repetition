# swift-repetition

`Repetition<Bounds, Operation>` pairs an operation with a multiplicity constraint.
It owns no source, output storage, or failure-recovery policy. Its operation may be
noncopyable; the specification is copyable when its operation is copyable.

Bounds remain standard ranges of Cardinal. Cardinal.Range provides their common
minimum, optional maximum, and membership contract. Unbounded ranges have no
finite maximum; exclusive empty ranges accept no count, including zero.

Collection, Iterator, and Parser interpret repetitions. Count-only traversal uses
Cardinal.Range directly, without constructing a bounds wrapper. Typed repetition
errors report an unsatisfied count, lack of progress, or count overflow.
