// swift-tools-version:5.1
//
//  Package.swift
//  LionECS
//
//  Created by Tomasz Lewandowski on 20/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "LionECS",
    products: [
        .library(
            name: "LionECS",
            targets: ["LionECS"])
    ],
    targets: [
        .target(
            name: "LionECS",
            dependencies: [],
            path: "ECS"),
        .testTarget(
            name: "LionECSTests",
            dependencies: ["LionECS"],
            path: "ECSTests")
    ]
)
