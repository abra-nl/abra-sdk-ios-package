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
            url: "https://nbg1.your-objectstorage.com/abrabv/AbraSDK/1.2.0/AbraSDK-1.2.0.zip",
            checksum: "5c50435bbf8bab0bca4d9c3cc012505bb39c9cf0b2068e63ce90e3e27ba645ee"
        ),
    ],
    swiftLanguageVersions: [.v5]
)