//
//  HomeView.swift
//  UICodeKit_Example
//
//  Created by Victor Alves de Freitas on 21/03/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit
import SwiftUI
import UICodeKit

class HomeView: UIView {
    lazy var label: UILabel = {
        var label = UILabel()
        label.text = "Olá, Mundo!"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .white
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .blue
        
        
        NSLayoutConstraint.activate([
            .init(item: label, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 20),
            
//            .init(item: label, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 24),
//
//            .init(item: label, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: -24),
            
            .init(item: label, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0),
            
            .init(item: label, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 40)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

struct HomeController_Previews2: PreviewProvider {
    static var previews: some View {
        HomeController().toPreview()
    }
}
