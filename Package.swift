// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationUnityAdsAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationUnityAdsAdapter",
            targets: ["AppLovinMediationUnityAdsAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package.git", exact: "4.22.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationUnityAdsAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationUnityAdsAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationUnityAdsAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/unityads-adapter/AppLovinMediationUnityAdsAdapter-4.22.0.0.zip",
            checksum: "1fde4478b45c8903facb0bb6ea95d064cd227f5111a523a2586de66ac34ac9ed"
        )
    ]
)
