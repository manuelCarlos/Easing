# Changelog

## [Unreleased]

## [2.1.2] - 02 Jul 2022

### Fixed

- Documentation typos.

## [2.1.1] - 22 Jan 2022

### Fixed

- Failing GitHub actions tests, by updating the action to run on `Xcode_13.2.1.app`.

## [2.1.0] - 24 Sept 2021

### Changed

- Update `RealModule` dependency minimum version to *v1.0* [swift-numerics package](https://github.com/apple/swift-numerics).

## [2.0.7] - 07 Jul 2021

### Changed

- Improve documentation of public interface to better support `DocC`.

## [2.0.6] - 11 Sept 2020

### Changed

- Clean up the use of the `Float80` instances in the tests.

## [2.0.5] - 04 Sept 2020

### Changed

- Use the `--enable-test-discovery` flag to run the Linux CI tests, eliminating the need for the `LinuxMain.swift` file.
- Delete `Tests/EasingTests/XCTestManifests.swift` and `Tests/LinuxMain.swift` since they are no longer requiered to run the tests from the command line.  

## [2.0.4] - 29 Aug 2020

### Changed

- Swift language versions support Swift 5.

## [2.0.3] - 29 Aug 2020

### Changed

- Expand package CI test coverage to iOS, macOS and tvOS.

## [2.0.2] - 28 Aug 2020

### Changed

- Update the `swift-tools-version` to *v5.1* in `Package.swift`.

## [2.0.1] - 08 Jul 2020

### Changed

- Include supported Swift versions 4 and 5, in the Package manifest, by setting `swiftLanguageVersions: [4, 5]`

## [2.0.0] - 06 Jul 2020

### Added

- A dependency to the `RealModule` from the [swift-numerics package](https://github.com/apple/swift-numerics), in order to use the `Real` protocol.
- Support for Xcode 12 beta and Swift tools version v5.2

### Changed

- The generic `Curve` type and its properties are now constrained to types conforming to the `Real` protocol, instead of `FloatingPointMath`.
- Improved test coverage, with testing for `Float80` and `Double` arguments.

### Removed - Breaking

- `FloatingPointMath` protocol has been removed from the implementation and has been replaced with the `Real` protocol.

## [1.0.2] - 15 May 2020

### Changed

- Improve the maths of the back ease out curve, for smother animations.

## [1.0.1] - 8 Aug 2019

### Fixed

- Undeclared type XCTestCaseEntry build error when testing on iOS.

## [1.0.0] - 28 Jun 2019

### Added

- Swift Package Manager integration.

## [0.1.0] - 29 Mar 2019

### Added

- Add support for Xcode 10.2 and Swift 5.

[Unreleased]: https://github.com/manuelCarlos/Easing/compare/2.1.2...head
[2.1.1]: https://github.com/manuelCarlos/Easing/compare/2.1.1...2.1.2
[2.1.1]: https://github.com/manuelCarlos/Easing/compare/2.1.0...2.1.1
[2.1.0]: https://github.com/manuelCarlos/Easing/compare/2.0.7...2.1.0
[2.0.7]: https://github.com/manuelCarlos/Easing/compare/2.0.6...2.0.7
[2.0.6]: https://github.com/manuelCarlos/Easing/compare/2.0.5...2.0.6
[2.0.5]: https://github.com/manuelCarlos/Easing/compare/2.0.4...2.0.5
[2.0.4]: https://github.com/manuelCarlos/Easing/compare/2.0.3...2.0.4
[2.0.3]: https://github.com/manuelCarlos/Easing/compare/2.0.2...2.0.3
[2.0.2]: https://github.com/manuelCarlos/Easing/compare/2.0.1...2.0.2
[2.0.1]: https://github.com/manuelCarlos/Easing/compare/2.0.0...2.0.1
[2.0.0]: https://github.com/manuelCarlos/Easing/compare/1.0.1...2.0.0
[1.0.2]: https://github.com/manuelCarlos/Easing/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/manuelCarlos/Easing/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/manuelCarlos/Easing/compare/0.1.0...1.0.0
[0.1.0]: https://github.com/manuelCarlos/Easing/compare/0.0.8...0.1.0


[better changelog]: https://keepachangelog.com
