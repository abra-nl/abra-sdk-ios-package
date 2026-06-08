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
            url: "https://downloads.abra.ai/abra-sdk-ios/production/AbraSDK-1.5.2.zip",
            checksum: "09922f84f5086105a72e806fd68c042a355d7ecd24084350f28331e605c9b963"
        )
    ],
    swiftLanguageVersions: [.v5]
)