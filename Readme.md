## Swifixture
[![Twitter: @tplioy](https://img.shields.io/badge/contact-@tplioy-blue.svg?style=flat)](https://twitter.com/tplioy)
[![Version](https://img.shields.io/cocoapods/v/Swifixture.svg?style=flat)](http://cocoapods.org/pods/Swifixture)
[![Platforms](https://img.shields.io/cocoapods/p/Swifixture.svg)](https://cocoapods.org/pods/Swifixture)
[![License](https://img.shields.io/cocoapods/l/Swifixture.svg)](https://raw.githubusercontent.com/tplioy/Swifixture/master/LICENSE)

[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/Swifixture.svg)](https://cocoapods.org/pods/Swifixture)

[![Travis](https://img.shields.io/travis/tplioy/Swifixture/master.svg)](https://travis-ci.org/tplioy/Swifixture/branches)
[![Cookiecutter-Swift](https://img.shields.io/badge/cookiecutter--swift-framework-red.svg)](http://github.com/cookiecutter-swift/Framework)

cookiecutter bootstrap template for swift framework

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Requirements

- iOS 8.0+ / Mac OS X 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.0+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build Swifixture 0.0.1+.

To integrate Swifixture into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'Swifixture', '~> 0.1.2'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Swifixture into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "Swifixture/Swifixture" ~> 0.1.2
```
### Swift Package Manager

To use Swifixture as a [Swift Package Manager](https://swift.org/package-manager/) package just add the following in your Package.swift file.

``` swift
import PackageDescription

let package = Package(
    name: "Swifixture",
    dependencies: [
        .Package(url: "https://github.com/thiagolioy/Swifixture.git", "0.1.2")
    ]
)
```

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate Swifixture into your project manually.

#### Git Submodules

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

```bash
$ git init
```

- Add Swifixture as a git [submodule](http://git-scm.com/docs/git-submodule) by running the following command:

```bash
$ git submodule add https://github.com/tplioy/Swifixture.git
$ git submodule update --init --recursive
```

- Open the new `Swifixture` folder, and drag the `Swifixture.xcodeproj` into the Project Navigator of your application's Xcode project.

    > It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Select the `Swifixture.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see two different `Swifixture.xcodeproj` folders each with two different versions of the `Swifixture.framework` nested inside a `Products` folder.

    > It does not matter which `Products` folder you choose from.

- Select the `Swifixture.framework`.

- And that's it!

> The `Swifixture.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.

#### Embeded Binaries

- Download the latest release from https://github.com/tplioy/Swifixture/releases
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- Add the downloaded `Swifixture.framework`.
- And that's it!

## Usage
To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
describe("Swifixture+ObjectMapperSpec") {
    context("{} json"){
        var swifixture: Swifixture?
        beforeEach {
            let bundle = Bundle(for: type(of: self))
            swifixture = Swifixture(file: "example", in: bundle)
        }

        it("should be able to parse to object using a mappable instance") {
            let parsedObj = swifixture!.map(to: UserTestModel.self)
            expect(parsedObj).toNot(beNil())
        }
    }
    context("[] json"){
        var swifixture: Swifixture?
        beforeEach {
            let bundle = Bundle(for: type(of: self))
            swifixture = Swifixture(file: "arrayExample", in: bundle)
        }

        it("should be able to parse to [object] using a mappable instance") {
            let parsedObj = swifixture!.mapArray(to: UserTestModel.self)
            expect(parsedObj).toNot(beNil())
            expect(parsedObj.count).to(equal(2))
        }
    }
}
```
## License

Swifixture is released under the MIT license. See [LICENSE](https://github.com/tplioy/Swifixture/blob/master/LICENSE) for details.
