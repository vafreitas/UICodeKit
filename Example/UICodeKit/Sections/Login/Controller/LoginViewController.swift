//
//  LoginViewController.swift
//  UICodeKit_Example
//
//  Created by Victor Freitas on 21/09/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: View
    
    let rootView = LoginView()
    override func loadView() {
        view = rootView
    }
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        registerActions()
    }
    
    // MARK: Actions
    
    func registerActions() {
        rootView.createAccountAction = {
            print("Create Account Tapped!")
        }
    }
}
