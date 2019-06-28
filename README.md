[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/manuelCarlos/Easing/blob/master/LICENSE)

# Easing in Swift

## This project is composed of a stand-alone library of easing functions implemented in Swift 4 (Easing.swift)

### Type of supported functions

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

The functions are design to accept a generic floating-point value as time parameter,
and return a floating-point denoting the rate of change of a property over time.

Supported argument types:

- Float
- Double
- CGFloat

### Usage

The *Curve* type allows access to all the different functions, for example:

    let x: Float = 0.3
    let a = Curve.quadratic.easeIn(x)
    // a = 0.09

    let x2: CGFloat = 0.5
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

### Instalation

#### Swift Package Manager (macOS and Linux)

Add `Easing` to your package manifest as a dependency, by adding the github URL to your `Package.swift`, e.g.:

     // swift-tools-version:4.0

     import PackageDescription

     let package = Package(
        name: "MyAwsomeProject",
        dependencies: [
              .package(url: "https://github.com/manuelCarlos/Easing.git", .branch("feature/SPMIntegration"))
        ],
        targets: [
            .target(
               name: "MyAwsomeProject",
               dependencies: ["Easing"])
        ]
    )

  - To quickly generate a Xcode project, navigate to the project folder in the terminal and run: 
  
    `swift package generate-xcodeproj`
    
     (In order to generate an `Easing.xcodeproj`from the project's `Package.swift`, be sure to have the Swift compiler installed and `Swift` added to your $PATH)

  - To quickly run the tests:
    
    `swift test`
    

#### Manually

Add the file *Easing.swift* to your project and you are ready to go.

## Changelog

### HEAD

## 0.1.0 (2019-03-29)

- Add support for Xcode 10.2 and Swift 5.

## 0.0.8 (2018-11-21)

- Add generate LinuxMain.swift and XCTestManifests.swift files.

## 0.0.7 (2018-11-19)

- Fixed quadratic ease-in-out return function and piecewise equations.

## 0.0.6 (2018-08-10)

- Improve documentation and added more tests.

## 0.0.5 (2018-03-21)

- Add inital SPM package preparation.
