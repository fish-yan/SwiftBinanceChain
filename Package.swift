// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "BinanceChain",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "BinanceChain", targets: ["binancechain"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.4.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.1"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.2"),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.0"),
        .package(url: "https://github.com/malcommac/SwiftDate", from: "6.0.1"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.8.4"),
        .package(url: "https://github.com/fish-yan/HDWalletKit.git", branch: "onto")
    ],
    targets: [
        .target(name: "binancechain",
                dependencies: [
                    .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                    "Alamofire",
                    "SwiftyJSON",
                    "HDWalletKit",
                    "XCGLogger",
                    "SwiftDate",
                    "CryptoSwift"
                ],
                path: "BinanceChain/Sources")
    ]
)
