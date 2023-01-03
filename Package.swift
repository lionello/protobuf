// swift-tools-version:4.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Protobuf",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "Protobuf", targets: ["Protobuf"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Protobuf",
            dependencies: [],
            path: "objectivec",
            exclude: [
                // The following would cause duplicate symbol definitions.GPBProtocolBuffers is expected to be
                // left out, as it's an umbrella implementation file.
                "GPBProtocolBuffers.m",
                "DevTools/",
                "Tests/",
                "BUILD.bazel",
                "generate_well_known_types.sh",
                "ProtocolBuffers_OSX.xcodeproj",
                "ProtocolBuffers_iOS.xcodeproj",
                "ProtocolBuffers_tvOS.xcodeproj",
                "README.md",
             ],
            sources: ["."]
//            publicHeadersPath: "."
        ),
    ]
)
