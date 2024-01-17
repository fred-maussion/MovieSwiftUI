// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "UI", targets: ["UI"]),
    ],
    dependencies:[
        .package(
            url: "https://github.com/elastic/apm-agent-ios.git",
            from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "UI",
            dependencies: [
                .product(name: "ElasticApm", package: "apm-agent-ios")
            ],
            path: "Sources")
    ],
    swiftLanguageVersions: [
        .version("5.2")
    ]
)
