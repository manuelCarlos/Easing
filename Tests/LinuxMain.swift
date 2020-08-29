
#if !os(watchOS)
import XCTest

import EasingTests

var tests = [XCTestCaseEntry]()
tests += EasingTests.__allTests()

XCTMain(tests)
#endif