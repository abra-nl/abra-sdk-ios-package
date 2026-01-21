// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AbraSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Library with dependencies
        .library(
            name: "AbraSDK",
            targets: ["AbraSDKFramework", "AbraSDKWrapper"]
        ),
    ],
    dependencies: [
        // Dependencies that the binary framework needs
        .package(url: "https://github.com/mac-cain13/R.swift.git", .upToNextMajor(from: "7.7.0")),
    ],
    targets: [
        // Binary target containing the framework
        .binaryTarget(
            name: "AbraSDKFramework",
            url: "https://downloads.abra.ai/abra-sdk-ios/production/AbraSDK-1.0.3.zip",
            checksum: "740ae0d437bfb34e10c232d78c2696a2deb41792dc31a3e96b828c0668cfb587"
        ),
        // Wrapper target to handle binary target dependencies
        .target(
            name: "AbraSDKWrapper",
            dependencies: [
                .product(name: "RswiftLibrary", package: "R.swift"),
                "AbraSDKFramework"
            ],
            path: "Wrapper"
        )
    ],
    swiftLanguageVersions: [.v5]
)