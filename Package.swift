// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "RxIGListKit",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library( name: "RxIGListKit", targets: ["RxIGListKit"])
    ],
    dependencies: [
        .package(url: "git@github.com:ReactiveX/RxSwift.git", from: "5.0.0"),
        .package(url: "git@github.com:eugene-krinitsyn/IGListKit.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "RxIGListKit",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "IGListKit", package: "IGListKit")
            ],
            path: "Source"
        )
    ]
)
