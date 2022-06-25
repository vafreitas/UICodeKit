//
//  HomeView.swift
//  UICodeKit_Example
//
//  Created by Victor Alves de Freitas on 25/06/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import UICodeKit

class HomeView: BaseView {
    
    lazy var titleLabel = UILabel() .. {
        $0.text = "UICodeKit"
        $0.font = UIFont.systemFont(ofSize: 36, weight: .medium)
    }
    
    lazy var subtitleLabel = UILabel() .. {
        $0.text = "That library support many things with UIKit."
        $0.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        $0.numberOfLines = 0
    }
    
    lazy var button = UIButton() .. {
        $0.setTitle("Clique aqui!", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
    }
    
    lazy var button1 = UIButton() .. {
        $0.setTitle("Clique aqui!", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
    }
    
    override func body() -> UIView? {
        VScroll(
            VStack(
                titleLabel,
                subtitleLabel,
                button,
                VSpacer(height: 200),
                Wrapper(button1, position: .centerX, align: .bottom),
                padding: [.horizontal(26)]
            )
        )
    }
}

