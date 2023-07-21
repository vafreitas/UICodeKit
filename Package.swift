// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UICodeKit",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "UICodeKit", targets: ["UICodeKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/roberthein/TinyConstraints", from: "4.0.2"),
        .package(url: "https://github.com/marlimox/AloeStackView", from: "1.2.0")
    ],
    targets: [
        .target(
            name: "UICodeKit",
            dependencies: ["TinyConstraints", "AloeStackView"],
            path: "Sources")
    ]
)
