// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoginFeature",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LoginFeature",
            targets: ["LoginFeature"])
    ],
    dependencies: [
        .package(
            name: "CoreNetwork",
            path: "../../CoreNetwork"
        ),
        .package(
            name: "EmpresasUI",
            path: "../../EmpresasUI"
        ),
        .package(
            name: "CoreApp",
            path: "../../CoreApp"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LoginFeature",
            dependencies: [
                "CoreNetwork",
                "EmpresasUI",
                "CoreApp"
            ])
    ]
)
