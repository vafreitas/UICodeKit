//
//  VScroll.swift
//  Components
//
//  Created by Victor Freitas on 19/06/21.
//

import UIKit

open class VScroll: UIScrollView {
    public init(_ view: UIView) {
        super.init(frame: .zero)
        addSubview(view)
        view.edgesToSuperview()
        view.width(to: self)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
