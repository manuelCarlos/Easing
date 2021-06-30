# ``Easing``

A package that implements Easing functions in Swift.


## Overview

Easing functions are useful for modelling the acceleration or change in speed over time.

Objects in a physical world don’t just jump from one position to another instantly, and the velocity at which they move is almost never constant. Natural movement is usually more accurately described mathematically by non-linear functions.

### Supported easing curves:

-  ``Easing/Curve/quadratic``
-  ``Easing/Curve/cubic``
-  ``Easing/Curve/quartic``
-  ``Easing/Curve/quintic``
-  ``Easing/Curve/sine``
-  ``Easing/Curve/circular``
-  ``Easing/Curve/exponential``
-  ``Easing/Curve/elastic``
-  ``Easing/Curve/back``
-  ``Easing/Curve/bounce``

Each type has its own separate ``Easing/Curve/easeIn``, ``Easing/Curve/easeOut`` and ``Easing/Curve/easeInOut`` form.

The functions are design to accept a generic floating-point input parameter,
and return a floating-point, denoting the rate of change of a property over time.

Supported argument types: 
- Any type that conforms to the [Real](https://github.com/apple/swift-numerics) protocol, e.g.
     - `Float`
     - `Float80`
     - `Double`
     
### Usage:

The ``Curve`` type allows access to all the different functions, for example:

```swift
let x: Float = 0.3
let y = Curve.quadratic.easeIn(x) // y = 0.09
```

```swift
let x: Double = 0.5
let y = Curve.sine.easeOut(x2) // y = 0.7071067811865    
```

## Topics

### Get started

- ``Curve``
