// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AbraSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "AbraSDK",
            targets: ["AbraSDKFramework", "AbraSDKWrapper"]
        ),
    ],
    dependencies: [
        // Only include dependencies that the binary framework directly needs
        .package(url: "https://github.com/mac-cain13/R.swift.git", from: "7.0.0")
    ],
    targets: [
        // Binary target with URL to the released framework
        .binaryTarget(
            name: "AbraSDKFramework",
            url: "https://nbg1.your-objectstorage.com/abrabv/AbraSDK/1.0.3/AbraSDK-1.0.3.zip",
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
