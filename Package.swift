// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "mmwm",
    platforms: [.macOS(.v14)],
    targets: [
        .executableTarget(
            name: "mmwm",
            path: "Sources",
            linkerSettings: [
                .linkedFramework("AppKit"),
                .linkedFramework("ApplicationServices"),
                .linkedFramework("Carbon"),
            ]
        )
    ]
)
