// swift-tools-version:5.0

import PackageDescription

let package = Package(name: "Easing",
                      products: [.library(name: "Easing", targets: ["Easing"])],
                      dependencies: [.package(url: "https://github.com/apple/swift-numerics", from: "1.0.0")],
                      targets: [.target(name: "Easing",
                                        // 06 Jul 2020 - No need to use `.product(name: "Numerics", package: "swift-numerics")` because
                                        // we only need the ``Real`` protocol.
                                        // Moreover, the `Numerics` product includes the `ComplexModule` which is not yet supported in the
                                        // latest Ubuntu version.
                                        dependencies: [.product(name: "RealModule", package: "swift-numerics")]),
                                .testTarget(name: "EasingTests", dependencies: ["Easing"])],
                      swiftLanguageVersions: [.v5])
