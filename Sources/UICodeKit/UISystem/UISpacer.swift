//
//  VSpacer.swift
//  Components
//
//  Created by Victor Freitas on 15/06/21.
//

import UIKit

open class UISpacer: UIView {
    public init(minHeight size: CGFloat = 0) {
        super.init(frame: .zero)
        if size > 0 {
            height(min: size)
        }
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
