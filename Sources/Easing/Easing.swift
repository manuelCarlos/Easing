//
//  Easing.swift
//
//  Created by Manuel Lopes on 03.09.2017.
//
// swiftlint:disable identifier_name
// swiftlint:disable file_length

import Foundation

/**
 The `FloatingPointMath` protocol declares 3 mathematical operations that
 let us write functions and algorithms that use Sine, Cosine and power of 2
 math, and work on any floating-point type.
 */
public protocol FloatingPointMath: FloatingPoint {
    /// The mathematical sine of a floating-point value.
    var sine: Self { get }

    /// The mathematical cosine of a floating-point value.
    var cosine: Self { get }

    /**
     The power base 2 of a floating-point value.
     In the next example 'y' has a value of '3.0'.
     The powerOfTwo of 'y' is therefore '8.0'.
     
     let y: Double = 3.0
     let p = y.powerOfTwo
     print(p)  // "8.0"
     */
    var powerOfTwo: Self { get }
}

// MARK: - FloatingPointMath extension for Float.

extension Float: FloatingPointMath {

    public var sine: Float {
        return sin(self)
    }

    public var cosine: Float {
        return cos(self)
    }

    public var powerOfTwo: Float {
        return pow(2, self)
    }
}

// MARK: - FloatingPointMath extension for Double.

extension Double: FloatingPointMath {

    public var sine: Double {
        return sin(self)
    }

    public var cosine: Double {
        return cos(self)
    }

    public var powerOfTwo: Double {
        return pow(2, self)
    }
}

/// Enum for each type of easing curve.

public enum Curve <T: FloatingPointMath> {
    case quadratic
    case cubic
    case quartic
    case quintic
    case sine
    case circular
    case exponential
    case elastic
    case back
    case bounce

    /// The ease-in version of the curve.
    public var easeIn: (T) -> T {
        return EasingMode.easeIn.mode(self)
    }

    // The ease-out version of the curve.
    public var easeOut: (T) -> T {
        return EasingMode.easeOut.mode(self)
    }

    /// The ease-in-out version of the curve.
    public var easeInOut: (T) -> T {
        return EasingMode.easeInOut.mode(self)
    }
}

// MARK: - Private

/// Convenience type to return the corresponding easing function for each curve.
private enum EasingMode <T: FloatingPointMath> {
    case easeIn
    case easeOut
    case easeInOut

    func mode ( _ w: Curve <T> ) -> (T) -> T { // swiftlint:disable:this cyclomatic_complexity function_body_length
        switch w {
        case .quadratic:
            switch self {
            case .easeIn:
                return quadraticEaseIn
            case .easeOut:
                return quadraticEaseOut
            case .easeInOut:
                return quadraticEaseInOut
            }
        case .cubic:
            switch self {
            case .easeIn:
                return cubicEaseIn
            case .easeOut:
                return cubicEaseOut
            case .easeInOut:
                return cubicEaseInOut
            }

        case .quartic:
            switch self {
            case .easeIn:
                return quarticEaseIn
            case .easeOut:
                return quarticEaseOut
            case .easeInOut:
                return quarticEaseInOut
            }

        case .quintic:
            switch self {
            case .easeIn:
                return quinticEaseIn
            case .easeOut:
                return quinticEaseOut
            case .easeInOut:
                return quinticEaseInOut
            }

        case .sine:
            switch self {
            case .easeIn:
                return sineEaseIn
            case .easeOut:
                return sineEaseOut
            case .easeInOut:
                return sineEaseInOut
            }
        case .circular:
            switch self {
            case .easeIn:
                return circularEaseIn
            case .easeOut:
                return circularEaseOut
            case .easeInOut:
                return circularEaseInOut
            }
        case .exponential:
            switch self {
            case .easeIn:
                return exponentialEaseIn
            case .easeOut:
                return exponentialEaseOut
            case .easeInOut:
                return exponentialEaseInOut
            }
        case .elastic:
            switch self {
            case .easeIn:
                return elasticEaseIn
            case .easeOut:
                return elasticEaseOut
            case .easeInOut:
                return elasticEaseInOut
            }

        case .back:
            switch self {
            case .easeIn:
                return backEaseIn
            case .easeOut:
                return backEaseOut
            case .easeInOut:
                return backEaseInOut
            }
        case .bounce:
            switch self {
            case .easeIn:
                return bounceEaseIn
            case .easeOut:
                return bounceEaseOut
            case .easeInOut:
                return bounceEaseInOut
            }
        }
    }
}

// MARK: - Quadratic

/// Returns a FloatingPoint value part of a **Quadratic Ease-In**  rate of change of a parameter over time.
///
/// Modelled after the function:
///
/// y = x^2
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1
/// - Returns: A FloatingPoint value.
private func quadraticEaseIn <T: FloatingPoint> (_ x: T) -> T {
    return x * x
}

/// Returns a FloatingPoint value part of a **Quadratic Ease-Out**  rate of change of a parameter over time.
///
/// Modelled after the Parabola:
///
/// y = -x^2 + 2x
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func quadraticEaseOut <T: FloatingPoint> (_ x: T) -> T {
    return -x * (x - 2)
}

/// Returns a FloatingPoint value part of a **Quadratic Ease-InOut**  rate of change of a parameter over time.
///
/// Modelled after the piecewise quadratic:
///
/// y = (1/2)((2x)^2)              [0, 0.5[
/// y = -(1/2)((2x-1)*(2x-3) - 1)  [0.5, 1]
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func quadraticEaseInOut <T: FloatingPoint> (_ x: T) -> T {
    if x < 1 / 2 {
        return 2 * x * x
    } else {
        return (-2 * x * x) + (4 * x) - 1
    }
}

// MARK: - Cubic

/// Returns a FloatingPoint value part of a **Cubic Ease-In**  rate of change of a parameter over time.
///
/// Modelled after the cubic function:
///
/// y = x^3
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func cubicEaseIn <T: FloatingPoint> (_ x: T) -> T {
    return x * x * x
}

/// Returns a FloatingPoint value part of a **Cubic Ease-Out**  rate of change of a parameter over time.
///
/// Modelled after the cubic function:
///
/// y = (x - 1)^3 + 1
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func cubicEaseOut <T: FloatingPoint> (_ x: T) -> T {
    let p = x - 1
    return  p * p * p + 1
}

/// Returns a FloatingPoint value part of a **Cubic Ease-InOut**  rate of change of a parameter over time.
///
/// Modelled after the piecewise cubic function:
///
/// y = 1/2 * ((2x)^3)       in  [0, 0.5[
/// y = 1/2 * ((2x-2)^3 + 2) in  [0.5, 1]
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func cubicEaseInOut <T: FloatingPoint> (_ x: T) -> T {
    if x < 1 / 2 {
        return 4 * x * x * x
    } else {
        let f = 2 * x - 2
        return 1 / 2 * f * f * f + 1
    }
}

// MARK: - Quartic

/// Returns a FloatingPoint value part of a **Quartic Ease-In**  rate of change of a parameter over time.
///
/// Modelled after the quartic function:
///
/// y =  x^4
///
/// - Parameter x: The FloatingPointvalue for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func quarticEaseIn <T: FloatingPoint> (_ x: T) -> T {
    return x * x * x * x
}

/// Returns a FloatingPoint value part of a **Quartic Ease-Out** rate of change of a parameter over time.
///
/// Modelled after the quartic function:
///
/// y = 1 - (x - 1)^4
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func quarticEaseOut <T: FloatingPoint> (_ x: T) -> T {
    let f = x - 1
    return f * f * f * (1 - x) + 1
}

/// Returns a FloatingPoint value part of a **Quartic Ease-InOut**  rate of change of a parameter over time.
///
/// Modelled after the piecewise quartic function:
///
/// y = (1/2)((2x)^4)        in [0, 0.5[
/// y = -(1/2)((2x-2)^4 - 2) in [0.5, 1]
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func quarticEaseInOut <T: FloatingPoint> (_ x: T) -> T {
    if x < 1 / 2 {
        return 8 * x * x * x * x
    } else {
        let f = x - 1
        return -8 * f * f * f * f + 1
    }
}

// MARK: - Quintic

/// Returns a FloatingPoint value part of a **Quintic Ease-In**  rate of change of a parameter over time.
///
/// Modelled after the quintic function:
///
/// y = x^5
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func quinticEaseIn <T: FloatingPoint> (_ x: T) -> T {
    return x * x * x * x * x
}

/// Returns a FloatingPoint value part of a **Quintic Ease-Out**  rate of change of a parameter over time.
///
/// Modelled after the quintic function:
///
/// y = (x - 1)^5 + 1
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func quinticEaseOut <T: FloatingPoint> (_ x: T) -> T {
    let f = x - 1
    return f * f * f * f * f + 1
}

/// Returns a FloatingPoint value part of a **Quintic Ease-InOut**  rate of change of a parameter over time.
///
/// Modelled after the piecewise quintic function:
///
/// y = 1/2 * ((2x)^5)       in [0, 0.5[
/// y = 1/2 * ((2x-2)^5 + 2) in [0.5, 1]
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func quinticEaseInOut <T: FloatingPoint> (_ x: T) -> T {
    if x < 1 / 2 {
        return 16 * x * x * x * x * x
    } else {
        let f = 2 * x - 2
        let g = f * f * f * f * f
        return 1 / 2 * g + 1
    }
}

// MARK: - Sine

/// Returns a floating-point value part of a **Sine Ease-In**  rate of change of a parameter over time.
///
/// Modelled after the function:
///
/// y = sin((x-1) * pi/2) + 1
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func sineEaseIn <T: FloatingPointMath> (_ x: T) -> T {
    return ((x - 1) * T.pi / 2).sine + 1
}

/// Returns a FloatingPoint value part of a **Sine Ease-Out**  rate of change of a parameter over time.
///
/// Modelled after the function:
///
/// y = sin(x * pi/2)
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func sineEaseOut <T: FloatingPointMath > (_ x: T) -> T {
    return (x * T.pi / 2).sine
}

/// Returns a floating-point value part of a **Sine Ease-InOut**  rate of change of a parameter over time.
///
/// Modelled after the function:
///
/// y = 1/2 * (cos(x * pi) - 1)
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func sineEaseInOut <T: FloatingPointMath > (_ x: T) -> T {
    return 1 / 2 * (1 - (x * T.pi).cosine)
}

// MARK: - Circular

/// Returns a floating-point value part of a **Circular Ease-In**  rate of change of a parameter over time.
///
/// Modelled after:
///
/// y = 1 - sqrt(1-(x^2))
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func circularEaseIn <T: FloatingPoint > (_ x: T) -> T {
    return 1 - sqrt(1 - x * x)
}

/// Returns a FloatingPoint value part of a **Circular Ease-Out**  rate of change of a parameter over time.
///
/// Modelled after:
///
/// y =  sqrt((2 - x) * x)
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func circularEaseOut <T: FloatingPoint > (_ x: T) -> T {
    return sqrt((2 - x) * x)
}

/// Returns a FloatingPoint value part of a **Circular Ease-InOut**  rate of change of a parameter over time.
///
/// Modelled after the piecewise circular function:
///
/// y = (1/2)(1 - sqrt(1 - 4x^2))           in [0, 0.5[
/// y = (1/2)(sqrt(-(2x - 3)*(2x - 1)) + 1) in [0.5, 1]
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func circularEaseInOut <T: FloatingPoint> (_ x: T) -> T {
    if x < 1 / 2 {
        let h = 1 - sqrt(1 - 4 * x * x)
        return 1 / 2 * h
    } else {
        let f = 2 * x - 1
        let g = -(2 * x - 3) * f
        let h = sqrt(g)
        return 1 / 2 * (h + 1)
    }
}

// MARK: - Exponencial

/// Returns a FloatingPoint value part of an **Exponencial Ease-In**  rate of change of a parameter over time.
///
/// Modelled after the piecewise function:
///
/// y = x when x == 0
/// y = 2^(10(x - 1)) in ]0, 1]
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func exponentialEaseIn <T: FloatingPointMath> (_ x: T) -> T {
    return x == 0 ? x : (10 * (x - 1)).powerOfTwo
}

/// Returns a floating-point value part of an **Exponencial Ease-Out**  rate of change of a parameter over time.
///
/// Modelled after the piecewise function:
///
/// y = x when x == 1
/// y = -2^(-10x) + 1 in [0, 1[
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func exponentialEaseOut <T: FloatingPointMath> (_ x: T) -> T {
    return x == 1 ? x : 1 - (-10 * x).powerOfTwo
}

/// Returns a floating-point value part of a **Exponencial Ease-InOut**  rate of change of a parameter over time.
///
/// Modelled after the piecewise function:
///
/// y = x when x == 0 or x == 1
/// y = 1/2 * 2^(10(2x - 1))        in ]0.0, 0.5[
/// y = -1/2 * 2^(-10(2x - 1))) + 1 in [0.5, 1[
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func exponentialEaseInOut <T: FloatingPointMath> (_ x: T) -> T {
    if x == 0 || x == 1 {
        return x
    }

    if x < 1 / 2 {
        return 1 / 2 * (20 * x - 10).powerOfTwo
    } else {
        let h = (-20 * x + 10).powerOfTwo
        return -1 / 2 * h + 1
    }
}

// MARK: - Elastic

/// Returns a FloatingPoint value part of an **Elastic Ease-In**  rate of change of a parameter over time.
///
/// Modelled after the damped sine wave:
///
/// y = sin(13 pi / 2 * x) * pow(2, 10 * (x - 1))
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func elasticEaseIn <T: FloatingPointMath> (_ x: T) -> T {
    return (13 * T.pi / 2 * x).sine * (10 * (x - 1)).powerOfTwo
}

/// Returns a FloatingPoint value part of an **Elastic Ease-Out**  rate of change of a parameter over time.
///
/// Modelled after the damped sine wave:
///
/// y = sin(-13 pi/2 * (x + 1)) * pow(2, -10x) + 1
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func elasticEaseOut <T: FloatingPointMath> (_ x: T) -> T {
    let f = (-13 * T.pi / 2 * (x + 1)).sine
    let g = (-10 * x).powerOfTwo
    return f * g + 1
}

/// Returns a FloatingPoint value part of an **Elastic Ease-InOut**  rate of change of a parameter over time.
///
/// Modelled after piecewise exponentially-damped sine wave:
///
/// y = 1/2 * sin((13pi/2) * 2*x) * pow(2, 10 * ((2*x) - 1))    in  [0,0.5[
/// y = 1/2 * (sin(-13pi/2*((2x-1)+1)) * pow(2,-10(2*x-1)) + 2) in  [0.5, 1]
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func elasticEaseInOut <T: FloatingPointMath> (_ x: T) -> T {
    if x < 1 / 2 {
        let f = ((13 * T.pi / 2) * 2 * x).sine
        let g = (10 * ((2 * x) - 1)).powerOfTwo
        return 1 / 2 * f * g
    } else {
        let h = (2 * x - 1) + 1
        let f = (-13 * T.pi / 2 * h).sine
        let g = (-10 * (2 * x - 1)).powerOfTwo
        return 1 / 2 * (f * g + 2)
    }
}

// MARK: - Back

/// Returns a FloatingPoint value part of a **Back Ease-In** rate of change of a parameter over time.
///
/// Modelled after the cubic function:
///
/// y = x^3-x * sin(x*pi)
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func backEaseIn <T: FloatingPointMath> (_ x: T) -> T {
    return x * x * x - x * (x * T.pi).sine
}

/// Returns a FloatingPoint value part of a **Back Ease-Out** rate of change of a parameter over time.
///
/// Modelled after the cubic function:
///
/// y = 1-((1-x)^3-(1-x)*sin((1-x)*pi))
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func  backEaseOut <T: FloatingPointMath> (_ x: T) -> T {
    let f = 1 - x
    return 1 - ( f * f * f - f * (f * T.pi).sine)
}

/// Returns a FloatingPoint value part of a **Back Ease-InOut** rate of change of a parameter over time.
///
/// Modelled after the piecewise cubic function:
///
/// y = 1/2 * ((2x)^3-(2x)*sin(2*x*pi))                             in [0, 0.5[
/// y = 1/2 * 1-((1-(2*x-1))^3-(1-(2*x-1))*(sin(1-(2*x-1)*pi)))+1/2 in [0.5, 1]
///
/// - Parameter x: The FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func backEaseInOut <T: FloatingPointMath> (_ x: T) -> T {
    if x < 1 / 2 {
        let f = 2 * x
        let g = f * f * f - f * (f * T.pi).sine
        return 1 / 2 * g
    } else {
        let f = 1 - (2 * x - 1)
        let g = (f * T.pi).sine
        let h = f * f * f - f * g
        let i = 1 - h
        return 1 / 2 * i + 1 / 2
    }
}

// MARK: - Bounce

/// Returns a FloatingPoint value part of a **Bounce Ease-In** rate of change of a parameter over time.
///
/// Modelled using the 'bounceEaseOut' function.
///
/// - Parameter x: A FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func bounceEaseIn <T: FloatingPoint> (_ x: T) -> T {
    return 1 - bounceEaseOut(1 - x)
}

/// Returns a FloatingPoint value part of a **Bounce Ease-Out** rate of change of a parameter over time.
///
/// Modelled using the mother of all bumpy piecewise functions.
///
/// - Parameter x: A FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func bounceEaseOut <T: FloatingPoint> (_ x: T) -> T {
    if x < 4 / 11 {
        return (121 * x * x) / 16
    } else if x < 8 / 11 {
        let f = (363 / 40) * x * x
        let g = (99 / 10) * x
        return f - g + (17 / 5)
    } else if x < 9 / 10 {
        let f = (4356 / 361) * x * x
        let g = (35442 / 1805) * x
        return  f - g + 16061 / 1805
    } else {
        let f = (54 / 5) * x * x
        return f - ((513 / 25) * x) + 268 / 25
    }
}

/// Returns a FloatingPoint value part of a **Bounce Ease-InOut** rate of change of a parameter over time.
///
/// Modelled using the piecewise function:
///
/// y = 1/2 * bounceEaseIn(2x)               in [0, 0.5[
/// y = 1/2 * bounceEaseOut(x * 2 - 1) + 1   in [0.5, 1]
///
/// - Parameter x: A FloatingPoint value for the time axis of the function, typically 0 <= x <= 1.
/// - Returns: A FloatingPoint value.
private func bounceEaseInOut <T: FloatingPoint> (_ x: T) -> T {
    if x < 1 / 2 {
        return 1 / 2 * bounceEaseIn(2 * x)
    } else {
        let f = bounceEaseOut(x * 2 - 1) + 1
        return 1 / 2 * f
    }
}
