// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UICodeKit",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "UICodeKit", targets: ["UICodeKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "UICodeKit",
            dependencies: [],
            path: "Sources")
    ]
)
a 
