// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GLTFKit2",
    platforms: [
        .iOS(.v12), .tvOS(.v12),
        .macOS(.v11), .macCatalyst(.v14)
    ],
    products: [
        .library(name: "GLTFKit2",          targets: ["GLTFKit2"]),
        .library(name: "GLTFKit2SceneKit",  targets: ["GLTFKit2SceneKit"])
    ],
    targets: [
        .target(
            name: "GLTFKit2",
            path: "Sources/GLTFKit2"
        ),
        .target(
            name: "GLTFKit2SceneKit",
            dependencies: ["GLTFKit2"],
            path: "Sources/GLTFKit2SceneKit"
        ),
    ]
)
