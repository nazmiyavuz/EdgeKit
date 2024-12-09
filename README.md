# EdgeKit

EdgeKit is a library to make Auto Layout easily on iOS.

[![apple](https://img.shields.io/badge/platform-iOS-181717?style=plastic&logo=apple&color=lightgray)](https://developer.apple.com/)
[![swift](https://img.shields.io/badge/swift-6.0-181717?style=plastic&logo=swift&color=orange)](https://developer.apple.com/swift/)

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
pod 'EdgeKit', '~> 1.0.0'
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

## Feedback

Find a bug or have a feature request? Please file an <a href="https://github.com/nazmiyavuz/EdgeKit/issues" targe="_blank">issue</a>!

It would be great if you could read our [documentation](https://github.com/nazmiyavuz/EdgeKit/wiki) first or search in the issues before you post, to avoid duplicates.

## Contribute

You can improve the [wiki](https://github.com/nazmiyavuz/EdgeKit/wiki) or discuss with us in the [issues](https://github.com/nazmiyavuz/EdgeKit/issues).

## Contact

[![Email Badge](https://img.shields.io/badge/Gmail-Contact_Me?&logo=gmail&logoColor=FFFFFF&labelColor=3A3B3C&color=F95454)](mailto:nazmiyavuz@gmail.com)
[![](https://img.shields.io/badge/LinkedIn-0077B5?e&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nazmiyavuz/)
