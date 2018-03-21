//
//  Easing.swift
//
//  Created by Manuel Lopes on 20.03.2018.
//

import XCTest
@testable import Easing

class EasingTests: XCTestCase {

    // MARK: - Quadratic

    func test_quadratic() {
        XCTAssertEqual(Curve.quadratic.easeIn(0), 0)
        XCTAssertEqual(Curve.quadratic.easeIn(1), 1)

        XCTAssertEqual(Curve.quadratic.easeOut(0), 0)
        XCTAssertEqual(Curve.quadratic.easeOut(1), 1)

        XCTAssertEqual(Curve.quadratic.easeInOut(0), 0)
        XCTAssertEqual(Curve.quadratic.easeInOut(1), 1)
    }

    // MARK: - Cubic

    func test_cubic() {
        XCTAssertEqual(Curve.cubic.easeIn(0), 0)
        XCTAssertEqual(Curve.cubic.easeIn(1), 1)

        XCTAssertEqual(Curve.cubic.easeOut(0), 0)
        XCTAssertEqual(Curve.cubic.easeOut(1), 1)

        XCTAssertEqual(Curve.cubic.easeInOut(0), 0)
        XCTAssertEqual(Curve.cubic.easeInOut(1), 1)
    }

    // MARK: - Quartic

    func test_quartic() {
        XCTAssertEqual(Curve.quartic.easeIn(0), 0)
        XCTAssertEqual(Curve.quartic.easeIn(1), 1)

        XCTAssertEqual(Curve.quartic.easeOut(0), 0)
        XCTAssertEqual(Curve.quartic.easeOut(1), 1)

        XCTAssertEqual(Curve.quartic.easeInOut(0), 0)
        XCTAssertEqual(Curve.quartic.easeInOut(1), 1)
    }

    // MARK: - Quintic

    func test_quintic() {
        XCTAssertEqual(Curve.quintic.easeIn(0), 0)
        XCTAssertEqual(Curve.quintic.easeIn(1), 1)

        XCTAssertEqual(Curve.quintic.easeOut(0), 0)
        XCTAssertEqual(Curve.quintic.easeOut(1), 1)

        XCTAssertEqual(Curve.quintic.easeInOut(0), 0)
        XCTAssertEqual(Curve.quintic.easeInOut(1), 1)
    }

    // MARK: - Sine

    func test_sine() {
        XCTAssertEqual(Curve.sine.easeIn(0), 0)
        XCTAssertEqual(Curve.sine.easeIn(1), 1)

        XCTAssertEqual(Curve.sine.easeOut(0), 0)
        XCTAssertEqual(Curve.sine.easeOut(1), 1)

        XCTAssertEqual(Curve.sine.easeInOut(0), 0)
        XCTAssertEqual(Curve.sine.easeInOut(1), 1)
    }

    // MARK: - Circular

    func test_circular() {
        XCTAssertEqual(Curve.circular.easeIn(0), 0)
        XCTAssertEqual(Curve.circular.easeIn(1), 1)

        XCTAssertEqual(Curve.circular.easeOut(0), 0)
        XCTAssertEqual(Curve.circular.easeOut(1), 1)

        XCTAssertEqual(Curve.circular.easeInOut(0), 0)
        XCTAssertEqual(Curve.circular.easeInOut(1), 1)
    }

    // MARK: - Exponencial

    func test_exponential() {
        XCTAssertEqual(Curve.exponential.easeIn(0), 0)
        XCTAssertEqual(Curve.exponential.easeIn(1), 1)

        XCTAssertEqual(Curve.exponential.easeOut(0), 0)
        XCTAssertEqual(Curve.exponential.easeOut(1), 1)

        XCTAssertEqual(Curve.exponential.easeInOut(0), 0)
        XCTAssertEqual(Curve.exponential.easeInOut(1), 1)
    }

    // MARK: - Elastic

    func test_elastic() {
        XCTAssertEqual(Curve.elastic.easeIn(0), 0)
        XCTAssertEqual(Curve.elastic.easeIn(1), 1)

        XCTAssertEqual(Curve.elastic.easeOut(0), 0)
        XCTAssertEqual(Curve.elastic.easeOut(1), 1)

        XCTAssertEqual(Curve.elastic.easeInOut(0), 0)
        XCTAssertEqual(Curve.elastic.easeInOut(1), 1)
    }

    // MARK: - Back

    func test_back() {
        XCTAssertEqual(Curve.back.easeIn(0), 0)
        XCTAssertTrue(0.9999999...1.0 ~= Curve.back.easeIn(1))

        XCTAssertTrue(0...0.0000001 ~= Curve.back.easeOut(0))
        XCTAssertEqual(Curve.back.easeOut(1), 1)

        XCTAssertEqual(Curve.back.easeInOut(0), 0)
        XCTAssertEqual(Curve.back.easeInOut(1), 1)
    }

    // MARK: - Bounce

    func test_bounce() {
        XCTAssertTrue(-0.0000001...0 ~= Curve.bounce.easeIn(0))
        XCTAssertEqual(Curve.bounce.easeIn(1), 1)

        XCTAssertEqual(Curve.bounce.easeOut(0), 0)
        XCTAssertTrue(0...1.00000001 ~= Curve.bounce.easeOut(1))

        XCTAssertTrue(-0.0000001...0 ~= Curve.bounce.easeInOut(0))
        XCTAssertTrue(0...1.0000001 ~= Curve.bounce.easeInOut(1))
    }

    static var allTests = [("test_quadratic", test_quadratic),
                           ("test_cubic", test_cubic),
                           ("test_quartic", test_quadratic),
                           ("test_quintic", test_quintic),
                           ("test_sine", test_sine),
                           ("test_circular", test_circular),
                           ("test_exponential", test_exponential),
                           ("test_elastic", test_elastic),
                           ("test_back", test_back),
                           ("test_bounce", test_bounce)]
}
