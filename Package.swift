// swift-tools-version: 5.8
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
            url: "https://nbg1.your-objectstorage.com/abrabv/AbraSDK/1.0.1/AbraSDK-1.0.1.zip",
            checksum: "5734b24490e6f2796fa8f1d47a039bfb35b91b2e296aa6bf4446415e56627d82"
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
