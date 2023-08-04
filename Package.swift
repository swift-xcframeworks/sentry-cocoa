// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let sentryVersion = "8.9.4" // Updated by workflow action
let sentryChecksum = "d1c78be4456b3bae47af9f28e8309880623741fbec3f9da3085647692cfbd426" // Updated by workflow action


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
