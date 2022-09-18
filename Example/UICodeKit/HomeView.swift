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
    
    lazy var profileImageView = UIImageView() .. {
        $0.image = UIImage(named: "profile")
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 100/2
        $0.layer.masksToBounds = true
        $0.height(100)
        $0.width(100)
    }
    
    lazy var titleLabel = UILabel() .. {
        $0.text = "54"
        $0.textAlignment = .center
        $0.font = UIFont.systemFont(ofSize: 16, weight: .medium)
    }
    
    lazy var subtitleLabel = UILabel() .. {
        $0.text = "Publicações"
        $0.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .gray
        $0.numberOfLines = 0
    }
    
    lazy var statusView1 = VStack(
        VSpacer(height: 24),
        titleLabel,
        subtitleLabel,
        spacing: 0
    )
    
    lazy var titleLabel1 = UILabel() .. {
        $0.text = "54"
        $0.textAlignment = .center
        $0.font = UIFont.systemFont(ofSize: 16, weight: .medium)
    }
    
    lazy var subtitleLabel1 = UILabel() .. {
        $0.text = "Seguidores"
        $0.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .gray
        $0.numberOfLines = 0
    }
    
    
    lazy var statusView2 = VStack(
        VSpacer(height: 24),
        titleLabel1,
        subtitleLabel1,
        spacing: 0
    )
    
    lazy var titleLabel2 = UILabel() .. {
        $0.text = "54"
        $0.textAlignment = .center
        $0.font = UIFont.systemFont(ofSize: 16, weight: .medium)
    }
    
    lazy var subtitleLabel2 = UILabel() .. {
        $0.text = "Seguindo"
        $0.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .gray
        $0.numberOfLines = 0
    }
    
    lazy var statusView3 = VStack(
        VSpacer(height: 24),
        titleLabel2,
        subtitleLabel2,
        spacing: 0
    )
    
    lazy var button = UIButton() .. {
        $0.setTitle("Clique aqui!", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
    }
    
    lazy var button1 = UIButton() .. {
        $0.setTitle("Clique aqui! 1", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
    }
    
    lazy var button2 = UIButton() .. {
        $0.setTitle("Clique aqui! 2", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
    }
    
    override func body() -> UIView? {
        VScroll(
            VStack(
                Wrapper(HStack(
                    profileImageView,
                    Wrapper([statusView1, statusView2, statusView3],
                    order: .leftToRight,
                    position: .centerY,
                    spacing: 12),
                    spacing: 8
                ), position: .centerY),
                padding: [.horizontal(24)]
            )
        )
    }
}

