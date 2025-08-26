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
            url: "https://nbg1.your-objectstorage.com/abrabv/AbraSDK/1.1.0/AbraSDK-1.1.0.zip",
            checksum: "6b218b5b170dfbc63a50fef915284b3bef0b5f07f1837fa1adfb621fdf1c481c"
        ),
    ],
    swiftLanguageVersions: [.v5]
)