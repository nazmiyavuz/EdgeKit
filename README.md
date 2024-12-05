# EdgeKit

EdgeKit is a library to make Auto Layout easily on iOS.

[![SwiftPM](https://img.shields.io/static/v1?message=SwiftPM&logo=swift&labelColor=orange&color=orange&logoColor=white&label=%20)](https://swift.org/)
[![Version](https://img.shields.io/cocoapods/v/EdgeKit.svg?style=flat)](https://cocoapods.org/pods/EdgeKit)
[![License](https://img.shields.io/cocoapods/l/EdgeKit.svg?style=flat)](https://github.com/nazmiyavuz/EdgeKit/blob/main/LICENSE)
[![12.0](https://img.shields.io/static/v1?message=12.0&logo=apple&labelColor=black&color=black&logoColor=white&label=iOS)](https://developer.apple.com/)

## [Wiki](https://github.com/nazmiyavuz/EdgeKit/wiki)

For the detailed information, please visit [Wiki](https://github.com/nazmiyavuz/EdgeKit/wiki)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 12.0+
- Swift 6.0

## Quick Start

```swift
import UIKit
import EdgeKit

class ViewController: UIViewController {

    private let firstView: UIView = {
        $0.backgroundColor = .systemPurple
        $0.layer.cornerRadius = 5
        return $0
    }(UIView())

    private let secondView: UIView = {
        $0.backgroundColor = .systemOrange
        $0.layer.cornerRadius = 5
        return $0
    }(UIView())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.addSubview(firstView)
        firstView.top(to: .parentView(inSafeArea: true), padding: 16)
        firstView.left(to: .parentView(inSafeArea: true), padding: 16)
        firstView.setSize(width: 200, height: 200)

        view.addSubview(secondView)
        secondView.anchor(leftAnchor: .leftEdge(of: firstView),
                          topAnchor: .bottomEdge(of: firstView),
                          rightAnchor: .rightEdge(of: firstView),
                          topPadding: 20)
        secondView.setHeight(100)

    }

}


```

## Installation

### CocoaPods

Simply add the following line to your Podfile:

```ruby
pod 'EdgeKit'
```

#### For the stable version

```ruby
pod 'EdgeKit', :git => 'https://github.com/nazmiyavuz/EdgeKit.git', :branch => 'main'
```

#### For the exact version

```ruby
pod 'EdgeKit', '~> 1.0.5'
```

### Swift Package Manager

EdgeKit is available through [Swift Package Manager](https://swift.org/package-manager/). To install
it, in Xcode select `File` > `Add Package Dependencies...` and add EdgeKit repository URL:

```url
https://github.com/nazmiyavuz/EdgeKit.git
```

Note: Please update the latest version or `main` branch of the EdgeKit repository in order to get the latest features.

## License

EdgeKit is available under the MIT license. See the [LICENSE](https://github.com/nazmiyavuz/EdgeKit/blob/main/LICENSE) file for more info.
