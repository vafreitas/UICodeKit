//
//  HomeView.swift
//  UICodeKit_Example
//
//  Created by Victor Freitas on 04/04/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UICodeKit

class HomeView: BaseView {
    
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
    
    // MARK: Actions
    
    @objc func continueTapped() {
        loginTapped?()
    }
}
