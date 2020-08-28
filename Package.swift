// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "Easing",
                      // Products define the executables and libraries produced by a package, and make them visible to other packages.
                      products: [.library(name: "Easing", targets: ["Easing"])],

                      // Dependencies declare other packages that this package depends on.
                      dependencies: [.package(url: "https://github.com/apple/swift-numerics", from: "0.0.5")],

                      // Targets are the basic building blocks of a package. A target can define a module or a test suite.
                      // Targets can depend on other targets in this package, and on products in packages which this package
                      // depends on.
                      targets: [.target(name: "Easing",
                                        // 06 Jul 2020 - No need to use `.product(name: "Numerics", package: "swift-numerics")` because
                                        // we only need the `Real` protocol.
                                        // Moreover, the `Numerics` product includes the `ComplexModule` which is not yet supported in the
                                        // latest Ubuntu version.
                                        dependencies: [.product(name: "RealModule", package: "swift-numerics")]),
                                .testTarget(name: "EasingTests", dependencies: ["Easing"])],

                      swiftLanguageVersions: [.v4, .v5])
