# UICodeKIT (Beta)

[![Version](https://img.shields.io/cocoapods/v/UICodeKit.svg?style=flat)](https://cocoapods.org/pods/UICodeKit)
[![License](https://img.shields.io/cocoapods/l/UICodeKit.svg?style=flat)](https://cocoapods.org/pods/UICodeKit)
[![Platform](https://img.shields.io/cocoapods/p/UICodeKit.svg?style=flat)](https://cocoapods.org/pods/UICodeKit)

Simple, Fast and Easy.

## Introduction

UICodeKit is a Viewcode alternative to help you assemble your controllers in just a few steps.

## How to use

Basically you just need to follow like this example below.

### You get with code below

<img src="https://github.com/vafreitas/UICodeKit/blob/master/Images/login.png" width="300px"/>

### LoginView.swift

```swift

class LoginView: BaseView {
    
    // MARK: Actions
    
    var loginTapped: (() -> Void)?
    
    // MARK: Properties
    
    lazy var titleLabel = UILabel() .. {
        $0.text = "LOGIN"
        $0.font = .systemFont(ofSize: 31, weight: .heavy)
    }
    
    lazy var usernameTextField = UITextField() .. {
        $0.placeholder = "Username"
        $0.borderStyle = .roundedRect
        $0.height(40)
    }
    
    lazy var passwordTextField = UITextField() .. {
        $0.placeholder = "Password"
        $0.isSecureTextEntry = true
        $0.borderStyle = .roundedRect
        $0.height(40)
    }
    
    lazy var enterButton = UIButton() .. {
        $0.setTitle("Sign In", for: .normal)
        $0.backgroundColor = .systemBlue
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 18)
        $0.layer.cornerRadius = 24
        $0.height(48)
        
        $0.addTarget(self, action: #selector(continueTapped), for: .touchUpInside)
    }
    
    lazy var forgotButton = UIButton() .. {
        $0.setTitle("Reset my password", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16)
        $0.layer.cornerRadius = 24
        $0.height(48)
    }
    
    // MARK: Body
    
    override func body() -> UICodeView? {
        UIScroll {
            UIStack(axis: .vertical) {
                Wrapper(titleLabel, position: .centerX)
                UIStack(axis: .vertical) {
                    usernameTextField
                    passwordTextField
                }.padding(.bottom(18))
                enterButton
                forgotButton
                UISpacer()
            }
            .padding(.top(24), .horizontal(16))
        }
    }
    
    @objc func continueTapped() {
        loginTapped?()
    }
}
    
```

### That's it. enjoy...

## Documentation

Soon...

## Requirements

- Xcode 13 or newer
- iOS 12 or newer

## Installation

UICodeKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add to your Podfile:

```ruby

target 'YourApp' do
  use_frameworks!

  # Pods for YourApp

  pod 'UICodeKit'

end
```

## Author

<img src="https://avatars.githubusercontent.com/u/33930810?s=400&u=de2cb07d58b8c7948bac1654a66bd54e6999a2a1&v=4" style="border: none; border-radius:50%" width="100" height="100">

Victor Freitas | iOS Developer

## License

UICodeKit is available under the MIT license. See the LICENSE file for more info.
