// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let sentryVersion = "8.9.0" // Updated by workflow action
let sentryChecksum = "af031b1bba4c74b8dc51a81ab8ffbd7151f90663e2665bbf7b831910579a00f3" // Updated by workflow action


let package = Package(
    name: "realm-swift",
    platforms: [.iOS(.v11), .macOS(.v10_13), .tvOS(.v11), .watchOS(.v4)],
    products: [
         .library(name: "Sentry", targets: ["Sentry"])
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "Sentry",
                      url: "https://github.com/swift-xcframeworks/sentry-cocoa/releases/download/\(sentryVersion)/Sentry.xcframework.zip",
                      checksum: sentryChecksum)
    ]
)
