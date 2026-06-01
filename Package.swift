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
            url: "https://downloads.abra.ai/abra-sdk-ios/production/AbraSDK-1.5.1.zip",
            checksum: "fed36523556258b7e71d0d623b5cdb4361c35d1b15d58de47b5c02426bf55586"
        )
    ],
    swiftLanguageVersions: [.v5]
)