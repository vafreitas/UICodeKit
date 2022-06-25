//
//  VSpacer.swift
//  Components
//
//  Created by Victor Freitas on 15/06/21.
//

import UIKit

open class VSpacer: UIView {
    
    public init(height size: CGFloat) {
        super.init(frame: .zero)
        height(size)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
