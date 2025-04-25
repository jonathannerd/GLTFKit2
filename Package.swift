// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GLTFKit2",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        .library(name: "GLTFKit2",            targets: ["GLTFKit2"]),
        .library(name: "GLTFKit2SceneKit",    targets: ["GLTFKit2SceneKit"])
    ],
    targets: [
        .binaryTarget(
            name: "GLTFKit2",
            url: "https://github.com/your-fork/GLTFKit2/releases/download/0.5.13/GLTFKit2.xcframework.zip",
            checksum: "<sha-256>"
        ),
        .target(               // SceneKit helper glue
            name: "GLTFKit2SceneKit",
            dependencies: ["GLTFKit2"],
            path: "Source/SceneKit") // whatever path you keep it in
    ]
)
