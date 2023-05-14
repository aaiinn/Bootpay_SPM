// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Bootpay",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "Bootpay_SPM",
            targets: ["Bootpay_SPM"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.7.1"),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", from: "4.2.0"),
        .package(url: "https://github.com/ninjaprox/NVActivityIndicatorView", from: "5.1.1")
    ],
    targets: [
        .target(
            name: "Bootpay_SPM",
            dependencies: [
                .product(name: "CryptoSwift", package: "CryptoSwift"),
                .product(name: "ObjectMapper", package: "ObjectMapper"),
                .product(name: "NVActivityIndicatorView", package: "NVActivityIndicatorView")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "Bootpay_SPMTests",
            dependencies: ["Bootpay_SPM"]
        ),
    ]
)
