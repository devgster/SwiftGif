// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SwiftGif",
    platforms: [
        .iOS(.v10), // iOS 10.0 이상 지원
        .macOS(.v10_15), // macOS 10.15 이상 지원
        .tvOS(.v10) // tvOS 10.0 이상 지원
    ],
    products: [
        .library(
            name: "SwiftGif",
            targets: ["SwiftGif"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftGif",
            path: "SwiftGifCommon",
            exclude: ["README.md"], // 필요시 제외할 파일 설정
            resources: [
                .process("Resources") // 이미지, 데이터 파일 등 리소스 처리
            ]
        ),
        .testTarget(
            name: "SwiftGifTests",
            dependencies: ["SwiftGif"],
            path: "SwiftGifTests"
        )
    ]
)
