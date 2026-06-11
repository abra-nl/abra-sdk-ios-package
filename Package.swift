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
            url: "https://downloads.abra.ai/abra-sdk-ios/production/AbraSDK-1.6.0.zip",
            checksum: "56b9121eb77a49af06aa0adbda4e533edbce5163deba525ec4c0a0ce97e40e2d"
        )
    ],
    swiftLanguageVersions: [.v5]
)