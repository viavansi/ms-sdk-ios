// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ms-sdk-ios",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_13)
    ],
    products: [
        .library(name: "ms-sdk-ios", targets: ["ms-sdk-ios"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elaget/AFNetworking.git", .exact("2.7.4")),
    ],
    targets: [
        .target(
            name: "ms-sdk-ios",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking"),
            ],
            path: "ms-sdk-ios/Classes",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include"),
            ],
            linkerSettings: [
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("MobileCoreServices", .when(platforms: [.iOS])),
                .linkedFramework("CoreServices", .when(platforms: [.macOS])),
            ]
        ),
    ]
)
