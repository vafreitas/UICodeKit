//
//  UISeparator.swift
//  UICodeKit
//
//  Created by Victor Alves de Freitas on 20/09/22.
//

import UIKit

open class UISeparator: BaseView {
    private let view = UIView() .. {
        $0.backgroundColor = .lightGray.withAlphaComponent(0.5)
        $0.height(0.4)
    }
    
    open override func body() -> UICodeView? {
        UIStack(axis: .horizontal) {
            view
        }
    }
}
