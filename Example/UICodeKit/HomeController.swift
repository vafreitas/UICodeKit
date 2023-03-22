//
//  Home.swift
//  UICodeKit_Example
//
//  Created by Victor Alves de Freitas on 21/03/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    let rootView = HomeView()
    override func loadView() {
        view = rootView
    }
}
