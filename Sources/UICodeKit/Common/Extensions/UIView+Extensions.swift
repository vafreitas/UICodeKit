//
//  UIView+Extensions.swift
//  UICodeKit_Example
//
//  Created by Victor Freitas on 21/07/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit
import TinyConstraints

extension UICodeView {
    public func padding(_ padding: Padding..., for type: PaddingType = .content) -> UICodeView {
        var paddings = PaddingModel()
        padding.forEach { padding in
            switch padding {
            case let .top(top):
                paddings.top = top
                
            case let .bottom(bottom):
                paddings.bottom = bottom
                
            case let .left(left):
                paddings.left = left
                
            case let .right(right):
                paddings.right = right
                
            case let .vertical(vertical):
                paddings.top = vertical
                paddings.bottom = vertical
                
            case let .horizontal(horizontal):
                paddings.left = horizontal
                paddings.right = horizontal
            }
        }
        
        let subview = UIView()
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.addSubview(self)
        
        switch type {
        case .content:
            translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: subview.topAnchor, constant: paddings.top),
                bottomAnchor.constraint(equalTo: subview.bottomAnchor, constant: -paddings.bottom),
                leadingAnchor.constraint(equalTo: subview.leadingAnchor, constant: paddings.left),
                trailingAnchor.constraint(equalTo: subview.trailingAnchor, constant: -paddings.right)
            ])
        }
        
        return subview
    }
    
    public func setHeight(_ size: CGFloat) -> UICodeView {
        height(size)
        return self
    }
    
    public func setMaxHeight(_ size: CGFloat) -> UICodeView {
        height(min: 0, max: size)
        return self
    }
}

