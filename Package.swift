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
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.4"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.2"),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.0"),
        .package(url: "https://github.com/malcommac/SwiftDate", from: "6.0.1"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.8.4"),
        .package(url: "https://github.com/21-DOT-DEV/swift-secp256k1", from: "0.19.0"),
        .package(url: "https://github.com/fish-yan/HDWalletKit.git", branch: "main")
    ],
    targets: [
        .target(name: "binancechain",
                dependencies: [
                    .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                    "Alamofire",
                    "SwiftyJSON",
                    "Starscream",
                    "HDWalletKit",
                    "XCGLogger",
                    .product(name: "secp256k1", package: "swift-secp256k1"),
                    "SwiftDate",
                    "CryptoSwift"
                ],
                path: "BinanceChain/Sources")
    ]
)
