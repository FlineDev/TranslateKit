// swift-tools-version: 6.0
import PackageDescription
import CompilerPluginSupport

let package = Package(
   name: "TranslateKit",
   defaultLocalization: "en",
   platforms: [.macOS(.v13), .iOS(.v16), .tvOS(.v16), .watchOS(.v9), .macCatalyst(.v16)],
   products: [
      .library(name: "TranslateKit", targets: ["TranslateKit"]),
      .library(name: "TranslateKitBooks", targets: ["TranslateKitBooks"]),
      .library(name: "TranslateKitBusiness", targets: ["TranslateKitBusiness"]),
      .library(name: "TranslateKitDeveloperTools", targets: ["TranslateKitDeveloperTools"]),
      .library(name: "TranslateKitEducation", targets: ["TranslateKitEducation"]),
      .library(name: "TranslateKitEntertainment", targets: ["TranslateKitEntertainment"]),
      .library(name: "TranslateKitFinance", targets: ["TranslateKitFinance"]),
      .library(name: "TranslateKitFoodAndDrink", targets: ["TranslateKitFoodAndDrink"]),
      .library(name: "TranslateKitGames", targets: ["TranslateKitGames"]),
      .library(name: "TranslateKitGraphicsAndDesign", targets: ["TranslateKitGraphicsAndDesign"]),
      .library(name: "TranslateKitHealthAndFitness", targets: ["TranslateKitHealthAndFitness"]),
      .library(name: "TranslateKitLifestyle", targets: ["TranslateKitLifestyle"]),
      .library(name: "TranslateKitMagazinesAndNewspapers", targets: ["TranslateKitMagazinesAndNewspapers"]),
      .library(name: "TranslateKitMedical", targets: ["TranslateKitMedical"]),
      .library(name: "TranslateKitMusic", targets: ["TranslateKitMusic"]),
      .library(name: "TranslateKitNavigation", targets: ["TranslateKitNavigation"]),
      .library(name: "TranslateKitNews", targets: ["TranslateKitNews"]),
      .library(name: "TranslateKitPhotoAndVideo", targets: ["TranslateKitPhotoAndVideo"]),
      .library(name: "TranslateKitProductivity", targets: ["TranslateKitProductivity"]),
      .library(name: "TranslateKitReference", targets: ["TranslateKitReference"]),
      .library(name: "TranslateKitShopping", targets: ["TranslateKitShopping"]),
      .library(name: "TranslateKitSocialNetworking", targets: ["TranslateKitSocialNetworking"]),
      .library(name: "TranslateKitSports", targets: ["TranslateKitSports"]),
      .library(name: "TranslateKitStickers", targets: ["TranslateKitStickers"]),
      .library(name: "TranslateKitTravel", targets: ["TranslateKitTravel"]),
      .library(name: "TranslateKitUtilities", targets: ["TranslateKitUtilities"]),
      .library(name: "TranslateKitWeather", targets: ["TranslateKitWeather"]),
   ],
   dependencies: [
      // being a good citizen: https://www.pointfree.co/blog/posts/116-being-a-good-citizen-in-the-land-of-swiftsyntax
      .package(url: "https://github.com/apple/swift-syntax.git", "600.0.0"..<"699.99.99"),
      .package(url: "https://github.com/pointfreeco/swift-macro-testing.git", branch: "main"),
   ],
   targets: [
      // Core Target
      .target(
         name: "TranslateKit",
         dependencies: ["TranslateKitMacros"],
         resources: [.process("Localizable.xcstrings")]
      ),

      // Category-specific Targets
      .target(
         name: "TranslateKitBooks",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitBusiness",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitDeveloperTools",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitEducation",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitEntertainment",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitFinance",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitFoodAndDrink",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitGames",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitGraphicsAndDesign",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitHealthAndFitness",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitLifestyle",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitMagazinesAndNewspapers",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitMedical",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitMusic",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitNavigation",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitNews",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitPhotoAndVideo",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitProductivity",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitReference",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitShopping",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitSocialNetworking",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitSports",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitStickers",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitTravel",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitUtilities",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),
      .target(
         name: "TranslateKitWeather",
         dependencies: ["TranslateKit"],
         resources: [.process("Localizable.xcstrings")]
      ),

      // Support Targets
      .macro(
         name: "TranslateKitMacros",
         dependencies: [
            .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
            .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
         ]
      ),
      .testTarget(
         name: "TranslateKitTests",
         dependencies: [
            "TranslateKit",
            .product(name: "MacroTesting", package: "swift-macro-testing"),
         ]
      ),
   ]
)
