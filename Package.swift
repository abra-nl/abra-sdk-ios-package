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
            url: "https://nbg1.your-objectstorage.com/abrabv/AbraSDK/1.2.0/AbraSDK-1.2.0.zip",
            checksum: "5c50435bbf8bab0bca4d9c3cc012505bb39c9cf0b2068e63ce90e3e27ba645ee"
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