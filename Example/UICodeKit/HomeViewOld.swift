//
//  HomeViewOld.swift
//  UICodeKit_Example
//
//  Created by Victor Alves de Freitas on 26/06/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

class HomeViewOld: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "UICodeKit"
        label.font = UIFont.systemFont(ofSize: 36, weight: .medium)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .white
        
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        configureContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureContraints() {
        NSLayoutConstraint.activate([
            .init(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0),
            .init(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 80)
        ])
    }
}
