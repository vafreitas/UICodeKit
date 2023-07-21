//
//  VScroll.swift
//  Components
//
//  Created by Victor Freitas on 19/06/21.
//

import UIKit
import AloeStackView

open class UIScroll: UICodeView {
    private let stack: AloeStackView
    
    public init(@UICodeBuilder _ content: () -> UIView) {
        stack = AloeStackView()
        super.init(frame: .zero)
        
        content().subviews.forEach {
            stack.addRow($0)
            stack.setInset(forRow: $0, inset: .zero)
            $0.height(to: stack)
        }
        
        stack.hidesSeparatorsByDefault = true
        stack.automaticallyHidesLastSeparator = true
        
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.edgesToSuperview()
        stack.height(to: self)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
