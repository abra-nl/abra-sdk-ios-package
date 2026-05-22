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
            targets: ["AbraSDKFramework"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AbraSDKFramework",
            url: "https://downloads.abra.ai/abra-sdk-ios/production/AbraSDK-1.4.0.zip",
            checksum: "446307c5fa3076c19431451104a8138a6c02fd5d2f0b5c7098d6fc03f537a153"
        )
    ],
    swiftLanguageVersions: [.v5]
)