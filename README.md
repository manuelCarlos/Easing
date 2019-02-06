
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/manuelCarlos/Easing/blob/master/LICENSE)

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

### Usage

Add the file *Easing.swift* to your project and you are ready to go.
The *Curve* type allows access to all the different functions, for example:

    let x: Float = 0.3
    let a = Curve.quadratic.easeIn(x)
    // a = 0.09

    let x2: Double = 0.5
    let b = Curve.sine.easeOut(x2)
    // b = 0.7071067811865


Here's an example of the use of the elastic ease-in-out function in an array of 75 points in the [0, 1] interval.

<p align="center">
   <img src="https://github.com/manuelCarlos/images/blob/master/images/easing.jpeg" >
</p>

#### Want to use with `CGFloat`?

Simply add a `CGFloat` extension adopting `FloatingPointMath`:

    extension CGFloat: FloatingPointMath {
    
       public var sine: CGFloat {
          return sin(self)
       }
    
       public var cosine: CGFloat {
          return cos(self)
       }
    
       public var powerOfTwo: CGFloat {
          return pow(2, self)
       }
    }

### Swift Package Manager support (for macOS and Linux)

You'll find a SPM ready version in the `feature/SPMIntegration` branch.

  - To quickly generate a Xcode project, navigate to the project folder in the terminal and run: 
  
    `swift package generate-xcodeproj`
    
     (In order to generate an `Easing.xcodeproj`from the project's `Package.swift`, be sure to have the Swift compiler installed and `Swift` added to your $PATH)

  - To quickly run the tests:
    
    `swift test`
    
