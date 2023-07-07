# UICodeKIT (Beta)

[![Version](https://img.shields.io/cocoapods/v/UICodeKit.svg?style=flat)](https://cocoapods.org/pods/UICodeKit)
[![License](https://img.shields.io/cocoapods/l/UICodeKit.svg?style=flat)](https://cocoapods.org/pods/UICodeKit)
[![Platform](https://img.shields.io/cocoapods/p/UICodeKit.svg?style=flat)](https://cocoapods.org/pods/UICodeKit)

Simple, Fast and Easy.

## Introduction

UICodeKit is a UIKit ViewCode Framework alternative to help you assemble your controllers in just a few steps.

## How to use

Basically you just need to follow like this example below.

### You get with code below

<img src="https://github.com/vafreitas/UICodeKit/blob/master/Images/create.png" width="300px"/>

### HomeView.swift

```swift


class HomeView: BaseView {
    
    // MARK: Actions
    
    var createAccountAction: UICodeDefaultAction?
    
    // MARK: Properties
    
    lazy var titleLabel = UILabel() .. {
        $0.text = "Create an account"
        $0.font = .systemFont(ofSize: 26, weight: .heavy)
    }
    
    lazy var usernameTextField = UITextField() .. {
        $0.placeholder = "Email Address"
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 6
        $0.height(40)
        $0.setLeftPaddingPoints(12)
    }
    
    lazy var passwordTextField = UITextField() .. {
        $0.placeholder = "Password"
        $0.isSecureTextEntry = true
        $0.backgroundColor = .white
        $0.height(40)
        $0.setLeftPaddingPoints(12)
    }
    
    lazy var enterButton = UIButton() .. {
        $0.setTitle("Create an Account", for: .normal)
        $0.backgroundColor = .systemBlue
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        $0.layer.cornerRadius = 10
        $0.height(50)
        
        $0.addTarget(self, action: #selector(createAccountTapped), for: .touchUpInside)
    }
    
    lazy var forgotButton = UIButton() .. {
        $0.setTitle("Already have an account?", for: .normal)
        $0.setTitleColor(.systemGray, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16)
        $0.layer.cornerRadius = 24
        $0.height(48)
    }
    
    // MARK: Body
    
    override func body() -> UICodeView? {
        UIStack(axis: .vertical) {
            Wrapper {
                titleLabel
            }
            .position(.centerX)
            .setHeight(50)
            
            UIStack(axis: .vertical) {
                usernameTextField
                passwordTextField
            }
            .padding(.bottom(18), .top(30))
            
            UIStack(axis: .vertical, spacing: 12) {
                enterButton
                forgotButton
            }
            
            UISeparator()
            
            UIStack(axis: .vertical) {
                UIButton(type: .system) .. {
                    $0.setTitleColor(.black, for: .normal)
                    $0.setTitle("Continue with Google", for: .normal)
                    $0.backgroundColor = .white
                    $0.height(50)
                    $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
                    $0.layer.cornerRadius = 10
                }
                
                UIButton(type: .system) .. {
                    $0.setTitleColor(.black, for: .normal)
                    $0.setTitle("Continue with Facebook", for: .normal)
                    $0.backgroundColor = .white
                    $0.height(50)
                    $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
                    $0.layer.cornerRadius = 10
                }
                
                UIButton(type: .system) .. {
                    $0.setTitleColor(.black, for: .normal)
                    $0.setTitle("Continue with Apple", for: .normal)
                    $0.backgroundColor = .white
                    $0.height(50)
                    $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
                    $0.layer.cornerRadius = 10
                }
            }
            
            UISpacer()
            
            UILabel() .. {
                $0.text = "All rights reserved 2023."
                $0.textAlignment = .center
                $0.textColor = .gray.withAlphaComponent(0.5)
                $0.font = .systemFont(ofSize: 14)
            }
        }
        .padding(.top(24), .horizontal(16))
        .. {
            $0.backgroundColor = .gray.withAlphaComponent(0.1)
        }
    }
    
    // MARK: Actions
    
    @objc func createAccountTapped() {
        createAccountAction?()
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeController().toPreview()
    }
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
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
