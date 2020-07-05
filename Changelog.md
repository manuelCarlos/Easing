# Changelog

## [Unreleased]

### Added

- A dependency to the [swift-numerics package](https://github.com/apple/swift-numerics), in order to use the `Real` protocol.

### Changes

- The generic `Curve` type and its properties are now constrained to types conforming to `Real`, instead of `FloatingPointMath`.
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

[Unreleased]: https://github.com/manuelCarlos/Easing/compare/1.0.2...head
[1.0.2]: https://github.com/manuelCarlos/Easing/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/manuelCarlos/Easing/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/manuelCarlos/Easing/compare/0.1.0...1.0.0
[0.1.0]: https://github.com/manuelCarlos/Easing/compare/0.0.8...0.1.0


[better changelog]: https://keepachangelog.com
