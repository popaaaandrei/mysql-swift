import PackageDescription

let package = Package(
    name: "MySQL",
    targets: [
        Target(name: "SQLFormatter"),
        Target(name: "MySQL", dependencies: ["SQLFormatter"])
    ],
    dependencies: [
        .Package(url: "https://github.com/novi/CMySQL.git", majorVersion: 2)
    ]
)
