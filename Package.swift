// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Bootpay_SPM",
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
        .package(url: "https://github.com/bootpay/ios_swift.git", from: "4.4.1"),
    ],
    targets: [
        .target(
            name: "Bootpay_SPM",
            dependencies: ["Bootpay"]
        ),
        .testTarget(
            name: "Bootpay_SPMTests",
            dependencies: ["Bootpay_SPM"]
        ),
    ]
)
