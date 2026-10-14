// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "TCEffectPlayer",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TCEffectPlayer",
                 targets: ["TCEffectPlayerBinary", "libtcpagBinary", "TCEffectPlayerDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/Hanpto/TCMediaX_SwiftPM.git", from: "3.3.256")
    ],
    targets: [
        .binaryTarget(
            name: "TCEffectPlayerBinary",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/app/tuikit/download/release/3.3/TCEffectPlayer_3.3.256_TCEffectPlayer.xcframework.zip",
            checksum: "03a9b85e0bd2398e0d49b04b4b12950a61cd1269dae17ace139f289a71a2cd5d"
        ),
        .binaryTarget(
            name: "libtcpagBinary",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/app/tuikit/download/release/3.3/TCEffectPlayer_3.3.256_libtcpag.xcframework.zip",
            checksum: "7aff05c452872ae5de9120ba248982fd61e0ce1ebdc3990c7c383090974a3281"
        ),
        .target(
            name: "TCEffectPlayerDeps",
            dependencies: [
                .product(name: "TCMediaX", package: "TCMediaX_SwiftPM")
            ],
            path: "Sources/Deps"
        )
    ]
)
