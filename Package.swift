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
            url: "https://downloads.abra.ai/abra-sdk-ios/production/AbraSDK-1.6.1.zip",
            checksum: "412406f23a674ce2abc4e23879da8b7a5d51793f2c0b2099c9223971cf16546c"
        )
    ],
    swiftLanguageVersions: [.v5]
)