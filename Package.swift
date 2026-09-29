// swift-tools-version: 6.4
import PackageDescription
let package = Package(
    name: "swift-repetition",
    platforms: [.macOS(.v27), .iOS(.v27), .tvOS(.v27), .watchOS(.v27), .visionOS(.v27)],
    products: [.library(name: "Repetition", targets: ["Repetition"])],
    dependencies: [.package(url: "https://github.com/swift-atoms/swift-cardinal.git", branch: "main")],
    targets: [.target(name: "Repetition", dependencies: [.product(name: "Cardinal", package: "swift-cardinal")]), .testTarget(name: "Repetition Tests", dependencies: ["Repetition"])],
    swiftLanguageModes: [.v6]
)
for target in package.targets {
    target.swiftSettings = [.enableExperimentalFeature("Lifetimes"), .enableUpcomingFeature("ExistentialAny"), .enableUpcomingFeature("InferIsolatedConformances")]
}
