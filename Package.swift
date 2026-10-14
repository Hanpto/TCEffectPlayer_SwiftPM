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
            checksum: "ba5bac4cbd4faaea8239bd2deb6d2d9db7f9de348a5b7fb148f8772223ed354c"
        ),
        .binaryTarget(
            name: "libtcpagBinary",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/app/tuikit/download/release/3.3/TCEffectPlayer_3.3.256_libtcpag.xcframework.zip",
            checksum: "439d89db97fb99ac8f5a2291fba49b063483229d8c9d06b4d6bfa9ca06efe16d"
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
