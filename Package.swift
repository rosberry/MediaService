// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MediaService",
    platforms: [.iOS(.v10), .macOS(.v10_12), .tvOS(.v10), .watchOS(.v2)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MediaService",
            targets: ["MediaService"])
    ], dependencies: [
        .package(url: "https://github.com/rosberry/CollectionViewTools", from: "0.1.7"),
        .package(url: "https://github.com/onmyway133/DeepDiff", from: "2.3.3"),
        .package(url: "https://github.com/rosberry/Framezilla", from: "5.1.2"),
        .package(name: "Ion", url: "https://github.com/rosberry/ion", .branch("master")),
        .package(name: "Texstyle", url: "https://github.com/rosberry/texstyle", .branch("master"))
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ], targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MediaService",
            dependencies: ["Ion"]),
        .testTarget(
            name: "MediaServiceTests",
            dependencies: ["MediaService"])
    ]
)
