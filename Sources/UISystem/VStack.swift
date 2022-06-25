//
//  VStack.swift
//  Components
//
//  Created by Victor Freitas on 15/06/21.
//

import UIKit
import TinyConstraints

open class VStack: UIStackView {
    public init (_ views: UIView...,
                 spacing: CGFloat = 16,
                 distribution: UIStackView.Distribution = .fill,
                 alignment: UIStackView.Alignment = .fill,
                 padding: [Padding] = []) {
        super.init(frame: .zero)
        axis = .vertical
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = alignment
        
        
        views.forEach { [weak self] view in
            guard let self = self else { return }
            self.addArrangedSubview(view)
        }
        
        setPadding(padding, for: .content)
        isLayoutMarginsRelativeArrangement = true
    }
    
    required public init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setPadding(_ padding: [Padding], for type: PaddingType) {
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
        
        switch type {
        case .content:
            layoutMargins = .init(top: paddings.top, left: paddings.left, bottom: paddings.bottom, right: paddings.right)
        }
    }
}
