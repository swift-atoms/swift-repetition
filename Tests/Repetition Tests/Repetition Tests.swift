import Repetition
import Testing
@Test func retainsConfiguration() {
    let value = Repetition(2...5, operation: 42)
    #expect(value.bounds == 2...5)
    #expect(value.operation == 42)
}
