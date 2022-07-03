// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TransitRealtime",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "TransitRealtime",
                 targets: ["TransitRealtime"]),
    ],
    dependencies: [
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.19.0"),
    ],
    targets: [
        .target(name: "TransitRealtime",
                dependencies: ["SwiftProtobuf"]),
    ]
)
