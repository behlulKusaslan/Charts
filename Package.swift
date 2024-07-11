// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Charts",
  products: [
    .library(
      name: "Charts",
      targets: ["Charts"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0")
  ],
  targets: [
    .target(
      name: "Charts",
      dependencies: [
        .product(name: "Algorithms", package: "swift-algorithms")
      ],
      path: "Sources"
    ),
    .testTarget(
      name: "ChartsTests",
      dependencies: ["Charts"]
    ),
  ]
)
