// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PiControlMqttMessages",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PiControlMqttMessages",
            targets: ["PiControlMqttMessages"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.28.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PiControlMqttMessages",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ],
            plugins: [
                .plugin(name: "protoc")
            ]
        ),
        .plugin(
            name: "protoc",
            capability: .buildTool()
        )
    ]
)
