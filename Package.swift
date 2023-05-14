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
    dependencies: [],
    targets: [
        .target(
            name: "Bootpay_SPM",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "Bootpay_SPMTests",
            dependencies: ["Bootpay_SPM"]
        ),
    ]
)
