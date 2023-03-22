//
//  HomeViewNew.swift
//  UICodeKit_Example
//
//  Created by Victor Alves de Freitas on 21/03/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UICodeKit
import UIKit
import SwiftUI

class HomeViewNew: BaseView {
    
    lazy var label = UILabel() .. {
        $0.text = "Olá, Mundo!"
        $0.backgroundColor = .red
    }
    
    
    lazy var label1 = UILabel() .. {
        $0.text = "Label1"
    }
    
    lazy var label2 = UILabel() .. {
        $0.text = "Label2"
    }
    
    override func body() -> UICodeView? {
        UIScroll {
            UIStack(axis: .vertical) {
                Wrapper(label, position: .centerX)
                UISpacer()
            }
        }
    }
}

//struct HomeController_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeController().toPreview()
//    }
//}
