import XCTest

extension EasingTests {
    static let __allTests = [
        ("test_back_is_strictly_ascending", test_back_is_not_strictly_ascending),
        ("test_back_start_end", test_back_start_end),
        ("test_bounce_is_strictly_ascending", test_bounce_is_not_strictly_ascending),
        ("test_bounce_start_end", test_bounce_start_end),
        ("test_circular_is_strictly_ascending", test_circular_is_strictly_ascending),
        ("test_circular_start_end", test_circular_start_end),
        ("test_cubic_is_strictly_ascending", test_cubic_is_strictly_ascending),
        ("test_cubic_start_end", test_cubic_start_end),
        ("test_elastic_is_strictly_ascending", test_elastic_is_not_strictly_ascending),
        ("test_elastic_start_end", test_elastic_start_end),
        ("test_exponential_is_strictly_ascending", test_exponential_is_strictly_ascending),
        ("test_exponential_start_end", test_exponential_start_end),
        ("test_quadratic_is_strictly_ascending", test_quadratic_is_strictly_ascending),
        ("test_quadratic_start_end", test_quadratic_start_end),
        ("test_quartic_is_strictly_ascending", test_quartic_is_strictly_ascending),
        ("test_quartic_start_end", test_quartic_start_end),
        ("test_quintic_is_strictly_ascending", test_quintic_is_strictly_ascending),
        ("test_quintic_start_end", test_quintic_start_end),
        ("test_sine_is_strictly_ascending", test_sine_is_strictly_ascending),
        ("test_sine_start_end", test_sine_start_end),
    ]
}

#if os(Linux)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EasingTests.__allTests)
    ]
}
#endif
