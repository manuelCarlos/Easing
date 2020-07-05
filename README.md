[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/manuelCarlos/Easing/blob/master/LICENSE)

[![release](https://img.shields.io/github/release/manuelCarlos/Easing.svg)](https://github.com/manuelCarlos/Easing/releases/latest)
![Tests](https://github.com/manuelCarlos/Easing/workflows/Swift/badge.svg?event=build)
![Tests](https://github.com/manuelCarlos/Easing/workflows/Swift/badge.svg)

# Easing
### (Supports iOS, macOS and Linux)

##### This project is composed of a stand-alone library of easing functions implemented in Swift.

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
- Any type that conforms to the `Real` protocol, e.g.
     - `Float`
     - `Float80`
     - `Double`

### Usage

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

### Installation

#### Swift Package Manager (iOS, macOS and Linux)

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
