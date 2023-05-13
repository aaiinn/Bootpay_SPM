// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Bootpay_SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Bootpay_SPM",
            targets: ["Bootpay_SPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/bootpay/ios_swift", from: "4.4.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Bootpay_SPM"),
        .testTarget(
            name: "Bootpay_SPMTests",
            dependencies: ["Bootpay_SPM"]),
    ]
)
