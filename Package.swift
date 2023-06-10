// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let sentryVersion = "8.7.3" // Updated by workflow action
let sentryChecksum = "8ca7b87b8d7c96f7b6cf25aeefd75c1bf2cefe4ab4f3b9053e3472abcfebf1e1" // Updated by workflow action


let package = Package(
    name: "realm-swift",
    platforms: [.iOS(.v11), .macOS(.v10_13), .tvOS(.v11), .watchOS(.v4)],
    products: [
         .library(name: "Sentry", targets: ["Sentry"])
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "Sentry",
                      url: "https://github.com/swift-xcframeworks/senry-cocoa/releases/download/\(sentryVersion)/Sentry.xcframework.zip",
                      checksum: sentryChecksum)
    ]
)
