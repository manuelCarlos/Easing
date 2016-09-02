//: Playground - noun: a place where people can play



// <T: FloatingPoint & ExpressibleByFloatLiteral >

//import CoreGraphics
import Foundation
// Linear 


//   line y = x
public func linear <T: FloatingPoint> (_ x: T ) -> T{
    return x
}




// Quadratic

// parabola y = x^2
public func quadraticEaseIn <T: FloatingPoint> (_ x: T) -> T{
    return x * x
}


//  parabola y = -x^2 + 2x
public func QuadraticEaseOut <T: FloatingPoint> (_ x: T) -> T{
    return -(x * (x - 2))
}

//  piecewise quadratic
// y = (1/2)((2x)^2)              [0, 0.5)
// y = -(1/2)((2x-1)*(2x-3) - 1)  [0.5, 1]
public func quadraticEaseInOut <T: FloatingPoint> (_ x: T  ) -> T{

    if x < 1/2{
        return 2 * x * x;
    }
    else{
        return (-2 * x * x) + (4 * x) - 1;
    }

}



// Cubic 

//  the cubic y = x^3
public func  cubicEaseIn <T: FloatingPoint> (_ x: T  ) -> T{
    return x * x * x
}

// the cubic y = (x - 1)^3 + 1
public func cubicEaseOut <T: FloatingPoint> (_ x: T  ) -> T{
    let p = x - 1
    return  p * p * p + 1/1
}



// the piecewise cubic
// y = (1/2)((2x)^3)        [0, 0.5)
// y = (1/2)((2x-2)^3 + 2)  [0.5, 1]
public func cubicEaseInOut <T: FloatingPoint> (_ x: T  ) -> T{

    if(x < 1/2){
        return 4 * x * x * x
    }
    else
    {
        let f = ((2 * x) - 2)
        return 1/2 * f * f * f + 1
    }
}



// Quartic

// the quartic x^4
public func  quarticEaseIn <T: FloatingPoint> (_ x: T  ) -> T{
    return x * x * x * x
}


//  the quartic y = 1 - (x - 1)^4
public func  quarticEaseOut <T: FloatingPoint> (_ x: T  ) -> T{
    let f = (x - 1)
    return f * f * f * (1 - x) + 1
}


// the piecewise quartic
// y = (1/2)((2x)^4)         [0, 0.5)
// y = -(1/2)((2x-2)^4 - 2)  [0.5, 1]
public func quarticEaseInOut <T: FloatingPoint> (_ x: T  ) -> T{
    if(x < 1/2){
        return 8 * x * x * x * x
    }
    else{
        let f = (x - 1)
        return -8 * f * f * f * f + 1
    }
}



// Quintic

// the quintic y = x^5
public func quinticEaseIn <T: FloatingPoint> (_ x: T  ) -> T{
    return x * x * x * x * x
}


// the quintic y = (x - 1)^5 + 1
public func quinticEaseOut <T: FloatingPoint> (_ x: T  ) -> T{
    let f = (x - 1)
    return f * f * f * f * f + 1/1
}

// the piecewise quintic
// y = (1/2)((2x)^5)      in  [0, 0.5]
// y = (1/2)((2x-2)^5 + 2) in [0.5, 1]
public func quinticEaseInOut <T: FloatingPoint> (_ x: T  ) -> T{

    if(x < 1/2){
        return 16 * x * x * x * x * x
    }
    else{
        let f = ((2 * x) - 2)
        return  1/2 * f * f * f * f * f + 1
    }
}



//// quarter-cycle of sine wave
//public func sineEaseIn <T: FloatingPoint & ExpressibleByFloatLiteral > (_ x: T  ) -> T{
////    let f = x - 1
//    let g = sin(x)
//    return g
//}




