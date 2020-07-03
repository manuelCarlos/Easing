//
//  EasingTests.swift
//
//  Created by Manuel Lopes on 20.03.2018.
//

import Numerics
import XCTest

@testable import Easing

final class EasingTests: XCTestCase {

    let arrayOfFloats:   [Float]   = Array(stride(from: 0, to: 1, by: 0.01))
    let arrayOfFloat80s: [Float80] = Array(stride(from: 0, to: 1, by: 0.01))
    let arrayOfDoubles:  [Double]  = Array(stride(from: 0, to: 1, by: 0.01))

    // MARK: - Quadratic

    func test_quadratic_start_end() {
        XCTAssertEqual(Curve.quadratic.easeIn(0), 0)
        XCTAssertEqual(Curve.quadratic.easeIn(1), 1)

        XCTAssertEqual(Curve.quadratic.easeOut(0), 0)
        XCTAssertEqual(Curve.quadratic.easeOut(1), 1)

        XCTAssertEqual(Curve.quadratic.easeInOut(0), 0)
        XCTAssertEqual(Curve.quadratic.easeInOut(1), 1)
    }

    func test_quadratic_is_strictly_ascending() {
        XCTAssertTrue(arrayOfFloats.map { Curve.quadratic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.quadratic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.quadratic.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfFloat80s.map { Curve.quadratic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.quadratic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.quadratic.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfDoubles.map { Curve.quadratic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.quadratic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.quadratic.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Cubic

    func test_cubic_start_end() {
        XCTAssertEqual(Curve.cubic.easeIn(0), 0)
        XCTAssertEqual(Curve.cubic.easeIn(1), 1)

        XCTAssertEqual(Curve.cubic.easeOut(0), 0)
        XCTAssertEqual(Curve.cubic.easeOut(1), 1)

        XCTAssertEqual(Curve.cubic.easeInOut(0), 0)
        XCTAssertEqual(Curve.cubic.easeInOut(1), 1)
    }

    func test_cubic_is_strictly_ascending() {
        XCTAssertTrue(arrayOfFloats.map { Curve.cubic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.cubic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.cubic.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfFloat80s.map { Curve.cubic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.cubic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.cubic.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfDoubles.map { Curve.cubic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.cubic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.cubic.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Quartic

    func test_quartic_start_end() {
        XCTAssertEqual(Curve.quartic.easeIn(0), 0)
        XCTAssertEqual(Curve.quartic.easeIn(1), 1)

        XCTAssertEqual(Curve.quartic.easeOut(0), 0)
        XCTAssertEqual(Curve.quartic.easeOut(1), 1)

        XCTAssertEqual(Curve.quartic.easeInOut(0), 0)
        XCTAssertEqual(Curve.quartic.easeInOut(1), 1)
    }

    func test_quartic_is_strictly_ascending() {
        XCTAssertTrue(arrayOfFloats.map { Curve.quartic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.quartic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.quartic.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfFloat80s.map { Curve.quartic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.quartic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.quartic.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfDoubles.map { Curve.quartic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.quartic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.quartic.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Quintic

    func test_quintic_start_end() {
        XCTAssertEqual(Curve.quintic.easeIn(0), 0)
        XCTAssertEqual(Curve.quintic.easeIn(1), 1)

        XCTAssertEqual(Curve.quintic.easeOut(0), 0)
        XCTAssertEqual(Curve.quintic.easeOut(1), 1)

        XCTAssertEqual(Curve.quintic.easeInOut(0), 0)
        XCTAssertEqual(Curve.quintic.easeInOut(1), 1)
    }

    func test_quintic_is_strictly_ascending() {
        XCTAssertTrue(arrayOfFloats.map { Curve.quintic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.quintic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.quintic.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfFloat80s.map { Curve.quintic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.quintic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.quintic.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfDoubles.map { Curve.quintic.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.quintic.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.quintic.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Sine

    func test_sine_start_end() {
        XCTAssertEqual(Curve.sine.easeIn(0), 0)
        XCTAssertEqual(Curve.sine.easeIn(1), 1)

        XCTAssertEqual(Curve.sine.easeOut(0), 0)
        XCTAssertEqual(Curve.sine.easeOut(1), 1)

        XCTAssertEqual(Curve.sine.easeInOut(0), 0)
        XCTAssertEqual(Curve.sine.easeInOut(1), 1)
    }

    func test_sine_is_strictly_ascending() {
        XCTAssertTrue(arrayOfFloats.map { Curve.sine.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.sine.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.sine.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfFloat80s.map { Curve.sine.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.sine.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.sine.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfDoubles.map { Curve.sine.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.sine.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.sine.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Circular

    func test_circular_start_end() {
        XCTAssertEqual(Curve.circular.easeIn(0), 0)
        XCTAssertEqual(Curve.circular.easeIn(1), 1)

        XCTAssertEqual(Curve.circular.easeOut(0), 0)
        XCTAssertEqual(Curve.circular.easeOut(1), 1)

        XCTAssertEqual(Curve.circular.easeInOut(0), 0)
        XCTAssertEqual(Curve.circular.easeInOut(1), 1)
    }

    func test_circular_is_strictly_ascending() {
        XCTAssertTrue(arrayOfFloats.map { Curve.circular.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.circular.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.circular.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfFloat80s.map { Curve.circular.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.circular.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.circular.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfDoubles.map { Curve.circular.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.circular.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.circular.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Exponencial

    func test_exponential_start_end() {
        XCTAssertEqual(Curve.exponential.easeIn(0), 0)
        XCTAssertEqual(Curve.exponential.easeIn(1), 1)

        XCTAssertEqual(Curve.exponential.easeOut(0), 0)
        XCTAssertEqual(Curve.exponential.easeOut(1), 1)

        XCTAssertEqual(Curve.exponential.easeInOut(0), 0)
        XCTAssertEqual(Curve.exponential.easeInOut(1), 1)
    }

    func test_exponential_is_strictly_ascending() {
        XCTAssertTrue(arrayOfFloats.map { Curve.exponential.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.exponential.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloats.map { Curve.exponential.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfFloat80s.map { Curve.exponential.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.exponential.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfFloat80s.map { Curve.exponential.easeInOut($0) }.isOrdered(<))

        XCTAssertTrue(arrayOfDoubles.map { Curve.exponential.easeIn($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.exponential.easeOut($0) }.isOrdered(<))
        XCTAssertTrue(arrayOfDoubles.map { Curve.exponential.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Elastic

    func test_elastic_start_end() {
        XCTAssertEqual(Curve.elastic.easeIn(0), 0)
        XCTAssertEqual(Curve.elastic.easeIn(1), 1)

        XCTAssertEqual(Curve.elastic.easeOut(0), 0)
        XCTAssertEqual(Curve.elastic.easeOut(1), 1)

        XCTAssertEqual(Curve.elastic.easeInOut(0), 0)
        XCTAssertEqual(Curve.elastic.easeInOut(1), 1)
    }

    func test_elastic_is_not_strictly_ascending() {
        XCTAssertFalse(arrayOfFloats.map { Curve.elastic.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloats.map { Curve.elastic.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloats.map { Curve.elastic.easeInOut($0) }.isOrdered(<))

        XCTAssertFalse(arrayOfFloat80s.map { Curve.elastic.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloat80s.map { Curve.elastic.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloat80s.map { Curve.elastic.easeInOut($0) }.isOrdered(<))

        XCTAssertFalse(arrayOfDoubles.map { Curve.elastic.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfDoubles.map { Curve.elastic.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfDoubles.map { Curve.elastic.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Back

    func test_back_start_end() {
        XCTAssertEqual(Curve.back.easeIn(0), 0)
        XCTAssertTrue(0.9999999...1.0 ~= Curve.back.easeIn(1))

        XCTAssertTrue(0...0.0000001 ~= Curve.back.easeOut(0))
        XCTAssertEqual(Curve.back.easeOut(1), 1)

        XCTAssertEqual(Curve.back.easeInOut(0), 0)
        XCTAssertEqual(Curve.back.easeInOut(1), 1)
    }

    func test_back_is_not_strictly_ascending() {
        XCTAssertFalse(arrayOfFloats.map { Curve.back.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloats.map { Curve.back.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloats.map { Curve.back.easeInOut($0) }.isOrdered(<))

        XCTAssertFalse(arrayOfFloat80s.map { Curve.back.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloat80s.map { Curve.back.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloat80s.map { Curve.back.easeInOut($0) }.isOrdered(<))

        XCTAssertFalse(arrayOfDoubles.map { Curve.back.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfDoubles.map { Curve.back.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfDoubles.map { Curve.back.easeInOut($0) }.isOrdered(<))
    }

    // MARK: - Bounce

    func test_bounce_start_end() {
        XCTAssertTrue(-0.0000001...0 ~= Curve.bounce.easeIn(0))
        XCTAssertEqual(Curve.bounce.easeIn(1), 1)

        XCTAssertEqual(Curve.bounce.easeOut(0), 0)
        XCTAssertTrue(0...1.00000001 ~= Curve.bounce.easeOut(1))

        XCTAssertTrue(-0.0000001...0 ~= Curve.bounce.easeInOut(0))
        XCTAssertTrue(0...1.0000001 ~= Curve.bounce.easeInOut(1))
    }

    func test_bounce_is_not_strictly_ascending() {
        XCTAssertFalse(arrayOfFloats.map { Curve.bounce.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloats.map { Curve.bounce.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloats.map { Curve.bounce.easeInOut($0) }.isOrdered(<))

        XCTAssertFalse(arrayOfFloat80s.map { Curve.bounce.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloat80s.map { Curve.bounce.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfFloat80s.map { Curve.bounce.easeInOut($0) }.isOrdered(<))

        XCTAssertFalse(arrayOfDoubles.map { Curve.bounce.easeIn($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfDoubles.map { Curve.bounce.easeOut($0) }.isOrdered(<))
        XCTAssertFalse(arrayOfDoubles.map { Curve.bounce.easeInOut($0) }.isOrdered(<))
    }
}
