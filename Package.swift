// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let sentryVersion = "8.7.4" // Updated by workflow action
let sentryChecksum = "97b36895a1365b8eff778ee227e8976e48700d35a58380ecadf9a022c7140894" // Updated by workflow action


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
