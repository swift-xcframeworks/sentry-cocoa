// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let sentryVersion = "8.15.0" // Updated by workflow action
let sentryChecksum = "5de0cc190553c8796bbeae5e7827c591037a30ffb37ecb7d597fb635ac84dbd4" // Updated by workflow action


let package = Package(
    name: "sentry-cocoa",
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
