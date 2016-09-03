//
//  Easing.swift
//  
//
//  Created by Manuel Lopes on 03/09/2016.
//



import UIKit

public protocol FloatingPointMath: FloatingPoint{
    
    var sine: Self {get}
    var cosine: Self {get}
    var powerOfTwo: Self {get}
}


extension Float : FloatingPointMath {
    
    public var sine : Float {return sin(self)}
    public var cosine : Float {return cos(self)}
    public var powerOfTwo: Float {return pow(2, self)}
    
}

extension Double : FloatingPointMath {
    public var sine : Double {return sin(self)}
    public var cosine : Double {return cos(self)}
    public var powerOfTwo: Double {return pow(2, self)}
    
    
}

extension CGFloat : FloatingPointMath {
    public var sine : CGFloat {return sin(self)}
    public var cosine : CGFloat {return cos(self)}
    public var powerOfTwo: CGFloat {return pow(2, self)}
}





// Linear

// Line y = x
public func linear <T: FloatingPoint> (_ x: T ) -> T{
    return x
}




// Quadratic

// Parabola y = x^2
public func quadraticEaseIn <T: FloatingPoint> (_ x: T) -> T{
    return x * x
}


// Parabola y = -x^2 + 2x
public func quadraticEaseOut <T: FloatingPoint> (_ x: T) -> T{
    return -(x * (x - 2))
}

// Piecewise quadratic
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

// Cubic y = x^3
public func  cubicEaseIn <T: FloatingPoint> (_ x: T  ) -> T{
    return x * x * x
}

// Cubic y = (x - 1)^3 + 1
public func cubicEaseOut <T: FloatingPoint> (_ x: T  ) -> T{
    let p = x - 1
    return  p * p * p + 1/1
}



// Piecewise cubic
// y = (1/2)((2x)^3)        [0, 0.5)
// y = (1/2)((2x-2)^3 + 2)  [0.5, 1]
public func cubicEaseInOut <T: FloatingPoint> (_ x: T  ) -> T{
    if(x < 1/2){
        return 4 * x * x * x
    }
    else{
        let f = ((2 * x) - 2)
        return 1/2 * f * f * f + 1
    }
}



// Quartic

// Quartic x^4
public func  quarticEaseIn <T: FloatingPoint> (_ x: T  ) -> T{
    return x * x * x * x
}


// Quartic y = 1 - (x - 1)^4
public func  quarticEaseOut <T: FloatingPoint> (_ x: T  ) -> T{
    let f = (x - 1)
    return f * f * f * (1 - x) + 1
}


// Piecewise quartic
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

// Quintic y = x^5
public func quinticEaseIn <T: FloatingPoint> (_ x: T  ) -> T{
    return x * x * x * x * x
}


// Quintic y = (x - 1)^5 + 1
public func quinticEaseOut <T: FloatingPoint> (_ x: T  ) -> T{
    let f = (x - 1)
    return f * f * f * f * f + 1/1
}

// Piecewise quintic
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


// Sine

// Quarter-cycle  sine wave
public func sineEaseIn <T: FloatingPointMath > (_ x: T  ) -> T{
    return ( ((x - 1) * T.pi/2).sine ) + 1/1
}


// Quarter-cycle of sine wave
public func sineEaseOut <T: FloatingPointMath > (_ x: T  ) -> T{
    return (x * T.pi/2).sine
}

// Half sine wave
public func sineEaseInOut <T: FloatingPointMath > (_ x: T  ) -> T{
    
    return 1/2 * (1 - (x * T.pi).cosine)
}



// Circular

// Shifted quadrant IV of unit circle
public func circularEaseIn <T: FloatingPoint > (_ x: T  ) -> T{
    return 1 - sqrt(1 - (x * x))
}


// Shifted quadrant II of unit circle
public func  circularEaseOut <T: FloatingPoint > (_ x: T  ) -> T{
    return sqrt((2 - x) * x)
}



// Piecewise circular function
// y = (1/2)(1 - sqrt(1 - 4x^2))            [0, 0.5)
// y = (1/2)(sqrt(-(2x - 3)*(2x - 1)) + 1)  [0.5, 1]
public func  circularEaseInOut <T: FloatingPoint > (_ x: T  ) -> T{
    if(x < 1/2){
        return 1/2 * (1 - sqrt(1 - 4 * (x * x)))
    }
    else{
        let f = -((2 * x) - 3) * ((2 * x) - 1)
        let g = sqrt( f )
        return 1/2 * ( g + 1 )
    }
}




// Exponencial

// Exponential  y = 2^(10(x - 1))
public func  exponentialEaseIn <T: FloatingPointMath > (_ x: T  ) -> T{
    return (x == 0) ? x :  ( 10 * (x - 1) ).powerOfTwo
}


//  Exponential  y = -2^(-10x) + 1
public func  exponentialEaseOut <T: FloatingPointMath > (_ x: T  ) -> T{
    return (x == 1) ? x : 1 - ( (-10 * x).powerOfTwo )
}



//  Piecewise exponential
// y = (1/2)2^(10(2x - 1))          [0,0.5)
// y = -(1/2)*2^(-10(2x - 1))) + 1  [0.5,1]
public func  exponentialEaseInOut <T: FloatingPointMath > (_ x: T  ) -> T{
    if x == 0 || x == 1 { return x }
    
    if x < 1/2 {
        return 1/2 * (  ((20 * x) - 10).powerOfTwo  )
    }
    else{
        return -1/2 * (  ((-20 * x) + 10/1).powerOfTwo  ) + 1
    }
}



// Elastic

//  Damped sine wave y = sin(13 pi/2 * x) * pow(2, 10 * (x - 1))
public func elasticEaseIn <T: FloatingPointMath > (_ x: T  ) -> T{
    return ( (13 * T.pi/2 * x).sine) * ( 10 * (x - 1)).powerOfTwo
}


//  Damped sine wave y = sin(-13 pi/2 * (x + 1)) * pow(2, -10x) + 1
public func  elasticEaseOut <T: FloatingPointMath > (_ x: T  ) -> T{
    let f =  (-13 * T.pi/2 * (x + 1/1)).sine
    let g =  ( -10 * x).powerOfTwo
    return f * g + 1/1
}


// Piecewise exponentially-damped sine wave
// y = (1/2) * sin(13pi/2*(2*x))*pow(2, 10 * ((2*x) - 1))         [0,0.5)
// y = (1/2) * (sin(-13pi/2*((2x-1)+1)) * pow(2,-10(2*x-1)) + 2)  [0.5, 1]
public func ElasticEaseInOut <T: FloatingPointMath > (_ x: T  ) -> T{
    
    if(x < 1/2){
        let f = (13 * T.pi/2 * (2 * x)).sine
        return 1/2 * f * (  (10 * ((2 * x) - 1) ).powerOfTwo  )
    }
    else{
        let f = (-13 * T.pi/2 * ((2 * x - 1) + 1)).sine
        let g = (-10 * (2 * x - 1)).powerOfTwo
        return 1/2 * (f * g + 2/1)
    }
}


// Back

// Cubic y = x^3-x*sin(x*pi)
public func backEaseIn <T: FloatingPointMath > (_ x: T  ) -> T{
    return x * x * x - x * (x * T.pi).sine
}


// Cubic y = 1-((1-x)^3-(1-x)*sin((1-x)*pi))
public func  backEaseOut <T: FloatingPointMath > (_ x: T  ) -> T{
    let f = (1 - x)
    return 1 - ( f * f * f - f * (f * T.pi).sine )
}



// Piecewise  cubic
// y = (1/2)*((2x)^3-(2x)*sin(2*x*pi))            [0, 0.5)
// y = (1/2)*(1-((1-x)^3-(1-x)*sin((1-x)*pi))+1)  [0.5, 1]
public func backEaseInOut <T: FloatingPointMath > (_ x: T  ) -> T{
    if(x < 1/2){
        let f = 2 * x
        return 1/2 * (f * f * f - f * (f * T.pi).sine )
    }
    else
    {
        let f = 1 - (2 * x - 1)
        let g = (f * T.pi).sine
        let h = (f * f * f - f *  g  )
        return 1/2 * (1 - h ) + 1/2
    }
}


// Bounce


public func bounceEaseIn <T: FloatingPoint > (_ x: T  ) -> T{
    return 1 - bounceEaseOut(1 - x)
}



public func bounceEaseOut <T: FloatingPoint > (_ x: T  ) -> T{
    
    if x < 4/11{
        return (121 * x * x) / 16
    }
    else if x < 8/11{
        let f = (363/40 * x * x)
        let g = (99/10 * x)
        return f - g + 17/5
    }
    else if x < 9/10{
        let f = (4356/361 * x * x)
        let g = (35442/1805 * x)
        return  f - g + 16061/1805
    }
    else{
        let f = (54/5 * x * x)
        return f - (513/25 * x) + 268/25
    }
}


public func bounceEaseInOut <T: FloatingPoint > (_ x: T  ) -> T{
    if(x < 1/2){
        return 1/2 * bounceEaseIn(x * 2)
    }
    else{
        let f = bounceEaseOut(x * 2 - 1) + 1/2
        return 1/2 * f
    }
}





