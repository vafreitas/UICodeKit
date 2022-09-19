//
//  VScroll.swift
//  Components
//
//  Created by Victor Freitas on 19/06/21.
//

import UIKit
import AloeStackView

extension UIScroll: UICodeViewProtocol {}

open class UIScroll: AloeStackView {
    public init(@UICodeBuilder _ content: () -> UIView) {
        super.init()
        
        content().subviews.forEach {
            addRow($0)
            setInset(forRow: $0, inset: .zero)
        }
        
        hidesSeparatorsByDefault = true
        automaticallyHidesLastSeparator = true
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
