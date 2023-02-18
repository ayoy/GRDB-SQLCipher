// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .tvOS(.v11),
        .watchOS(.v4),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/ayoy/GRDB-SQLCipher/releases/download/0.0.1/GRDB.xcframework.zip",
            checksum: "b17df18101803e1efa98cefdd660ef0e111a7a02a5a92f4f40abd251cbf3cb29"
        ),
        .target(name: "_GRDBDummy")
    ]
)
