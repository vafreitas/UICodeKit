//
//  HStack.swift
//  Components
//
//  Created by Victor Freitas on 19/06/21.
//

import UIKit
import TinyConstraints

open class UIStack: UICodeView {
    private var stackView: UIStackView
    
    public lazy var edgesToBottom: UIStack = {
        stackView.bottomToSuperview()
        return self
    }()
    
    public lazy var centerizing: UIStack = {
        stackView.centerYToSuperview()
        return self
    }()
    
    public init(axis: NSLayoutConstraint.Axis,
                spacing: CGFloat = 16,
                distribution: UIStackView.Distribution = .fill,
                alignment: UIStackView.Alignment = .fill,
                excluding edges: LayoutEdge? = nil,
                @UICodeBuilder _ content: () -> UIView) {
        stackView = UIStackView()
        super.init(frame: .zero)
        
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.distribution = distribution
        stackView.alignment = alignment
        
        content().subviews.forEach {
            stackView.addArrangedSubview($0)
        }
        
        addSubview(stackView)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        if let edges = edges {
            stackView.edgesToSuperview(excluding: edges, usingSafeArea: true)
        } else {
            stackView.edgesToSuperview(usingSafeArea: true)
        }
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
            stackView.layoutMargins = .init(top: paddings.top, left: paddings.left, bottom: paddings.bottom, right: paddings.right)
        }
        
        return self
    }
}
