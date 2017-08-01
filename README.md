


# Easing in Swift

##### This project is composed of a stand-alone library of easing functions implemented in Swift 4 (Easing.swift).

### Type of supported functions:
 - Quadratic
 - Cubic
 - Quartic
 - Quintic
 - Sine
 - Circular
 - Exponential
 - Elastic
 - Back
 - Bounce

 Each type has its own separate *ease-In*, *ease-Out* and *ease-In-Out* form.

The functions are design to accept a generic floating-point value  as time parameter,  
and return a floating-point denoting the rate of change of a property over time.

Supported argument types:
 - Float
 - Double
 - CGFloat



### Usage
Add the file *Easing.swift* to your project and you are ready to go.
The *Curve* type allows access to all the different functions, for example:

    let x: Float = 0.3
    let a = Curve.quadratic.easeIn(x)
    // a = 0.09

    let x2: CGFloat = 0.5
    let b = Curve.sine.easeOut(x2)
    // b = 0.7071067811865


Here's an example of the use of the elastic ease-in-out function in an array of 75 points in the [0, 1] interval.


<p align="center">
   <img src="http://manuelcarlos.github.io/assets/img/easing.jpeg" >
</p>


 **Please note** : This code was written for Swift 3. Older versions of Swift are currently not supported.
