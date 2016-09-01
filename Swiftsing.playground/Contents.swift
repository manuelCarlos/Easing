//: Playground - noun: a place where people can play




public typealias EaseValue = Double


//   line y = x
public func linear(_ x: EaseValue ) -> EaseValue{
    return x
}


// parabola y = x^2

public func quadraticEaseIn(_ x: EaseValue) -> EaseValue{
    return x * x
}