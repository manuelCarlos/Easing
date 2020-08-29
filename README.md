[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/manuelCarlos/Easing/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/manuelCarlos/Easing.svg)](https://github.com/manuelCarlos/Easing/releases/latest)
![Test-iOS](https://github.com/manuelCarlos/Easing/workflows/Test-iOS/badge.svg?branch=main)
![Test-macOS](https://github.com/manuelCarlos/Easing/workflows/Test-macOS/badge.svg?branch=main)
![Test-tvOS](https://github.com/manuelCarlos/Easing/workflows/Test-tvOS/badge.svg?branch=main)
![Test-Linux](https://github.com/manuelCarlos/Easing/workflows/Test-Linux/badge.svg?branch=main)

# Easing

### A library that implements easing functions in Swift.

### Supported platforms:

- **iOS**, **macOS**, **tvOS**, **watchOS** and **Linux** (latest Ubuntu).

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

The functions are design to accept a generic floating-point input parameter,
and return a floating-point, denoting the rate of change of a property over time.

Supported argument types: 
- Any type that conforms to the `Real` protocol, e.g.
     - `Float`
     - `Float80`
     - `Double`
     
### Usage:

The *Curve* type allows access to all the different functions, for example:

```swift
let x: Float = 0.3
let y = Curve.quadratic.easeIn(x) // y = 0.09
```

```swift
let x: Double = 0.5
let y = Curve.sine.easeOut(x2) // y = 0.7071067811865    
```

Here's an example of the use of the elastic ease-in-out function in an array of 75 points in the [0, 1] interval.

<p align="center">
   <img src="https://github.com/manuelCarlos/images/blob/master/images/easing.jpeg" >
</p>

### Installation:

#### Swift Package Manager (iOS, macOS and Linux)

Add `Easing` to your package manifest as a dependency, by adding the github URL to your `Package.swift`, e.g.:

```swift
// swift-tools-version:4.0

import PackageDescription

let package = Package(
   name: "MyAwsomeProject",
   dependencies: [
      .package(url: "https://github.com/manuelCarlos/Easing.git", .upToNextMajor(from: "2.0.0"))
   ],
   targets: [
      .target(
         name: "MyAwsomeProject",
         dependencies: ["Easing"])
   ]
)
```

  - To quickly generate a Xcode project, navigate to the project folder in the terminal and run: 
  
    `swift package generate-xcodeproj`
    
     (In order to generate an `Easing.xcodeproj`from the project's `Package.swift`, be sure to have the Swift compiler installed and `Swift` added to your $PATH)

  - To quickly run the tests:
    
    `swift test`
    
### Dependencies:

- Apple's `RealModule` from the [Swift Numerics](https://github.com/apple/swift-numerics) package.
