// swift-tools-version: 6.0

import PackageDescription

let lint: [Target.PluginUsage] = [
    .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
]

let package = Package(
    name: "GrannySwift",
    platforms: [.macOS(.v14)],
    products: [
        .executable(name: "granny", targets: ["granny"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.8.2"),
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins.git", from: "0.65.1")
    ],
    targets: [
        .target(name: "GrannyCore", plugins: lint),
        .executableTarget(
            name: "granny",
            dependencies: [
                "GrannyCore",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            plugins: lint
        ),
        .testTarget(name: "GrannyCoreTests", dependencies: ["GrannyCore"], plugins: lint)
    ]
)
