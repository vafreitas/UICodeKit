//
//  HomeController.swift
//  UICodeKit_Example
//
//  Created by Victor Freitas on 04/04/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
 
    // MARK: View
    
    let rootView = HomeView()
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
