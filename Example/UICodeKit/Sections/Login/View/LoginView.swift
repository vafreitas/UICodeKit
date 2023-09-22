//
//  LoginView.swift
//  UICodeKit_Example
//
//  Created by Victor Freitas on 21/09/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import SwiftUI

class LoginView: BaseView {
    
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
            .size(height: 50)
            
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


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewController().toPreview()
    }
}
