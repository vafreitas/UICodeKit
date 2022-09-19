//
//  HStack.swift
//  Components
//
//  Created by Victor Freitas on 19/06/21.
//

import UIKit

extension UIStack: UICodeViewProtocol {}

open class UIStack: UIStackView {
    public init(axis: NSLayoutConstraint.Axis, spacing: CGFloat = 16, distribution: UIStackView.Distribution = .fill, alignment: UIStackView.Alignment = .fill, @UICodeBuilder _ content: () -> UIView) {
        super.init(frame: .zero)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = alignment
        
        
        content().subviews.forEach { addArrangedSubview($0) }
        isLayoutMarginsRelativeArrangement = true
    }
    
    required public init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func padding(_ padding: Padding..., for type: PaddingType = .content) -> UIStack {
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
        
        return self
    }
}
