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
    dependencies: [
        // All dependencies are embedded in the binary
    ],
    targets: [
        .binaryTarget(
            name: "AbraSDKFramework",
            url: "https://downloads.abra.ai/abra-sdk-ios/production/AbraSDK-1.1.1.zip",
            checksum: "605a98ea464fd8749ea0bf5da785eefb27ba32874716c70dcff56be847ba73ac"
        ),
    ],
    swiftLanguageVersions: [.v5]
)