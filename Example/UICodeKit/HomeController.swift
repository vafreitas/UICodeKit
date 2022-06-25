//
//  HomeController.swift
//  UICodeKit_Example
//
//  Created by Victor Alves de Freitas on 25/06/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: Root View
    
    let rootView = HomeView()
    override func loadView() {
        view = rootView
    }
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
