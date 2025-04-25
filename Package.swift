// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "GLTFKit2",
    platforms: [
        .macOS("11.0"),
        .macCatalyst("14.0"),
        .iOS("12.1"),
        .tvOS("12.1")
        // visionOS("1.0") supported but needs Swift-tools 5.9
    ],

    // ------------------------------------------------------------------
    //  PRODUCTS
    // ------------------------------------------------------------------
    products: [
        /// Core GLTF parser (pre-built xcframework – **unchanged**)
        .library(
            name: "GLTFKit2",
            targets: ["GLTFKit2"]
        ),

        /// NEW: SceneKit convenience layer
        ///  → lets you `import GLTFKit2SceneKit`
        .library(
            name: "GLTFKit2SceneKit",
            targets: ["GLTFKit2SceneKit"]
        )
    ],

    // ------------------------------------------------------------------
    //  TARGETS
    // ------------------------------------------------------------------
    targets: [
        // Binary xcframework that ships with the repo (unchanged)
        .binaryTarget(
            name: "GLTFKit2",
            url: "https://github.com/warrenm/GLTFKit2/releases/download/0.5.13/GLTFKit2.xcframework.zip",
            checksum: "8726645f392554329fa63610bf8592407ea192356a584deaf0b35468e0005fb6"
        ),

        // NEW: Swift target for SceneKit helpers
        .target(
            name: "GLTFKit2SceneKit",
            dependencies: ["GLTFKit2"],
            path: "Source/SceneKit",          // <- folder in the repo
            exclude: [],                      // keep default
            resources: [],                    // no resources
            cSettings: nil,
            swiftSettings: nil,
            linkerSettings: nil
        )
    ]
)
