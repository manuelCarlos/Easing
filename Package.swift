// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Easing",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Easing",
            targets: ["Easing"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-numerics", from: "0.0.5"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package
        // depends on.
        .target(
            name: "Easing",
            dependencies: [
                // 06 Jul 2020 - No need to use `.product(name: "Numerics", package: "swift-numerics")` because we only need the `Real` protocol.
                // Moreover, the `Numerics` product includes the `ComplexModule` which is not yet supported in the latest Ubuntu version.
                .product(name: "RealModule", package: "swift-numerics"),
                
            ]),
        .testTarget(
            name: "EasingTests",
            dependencies: ["Easing"])
    ]
)
