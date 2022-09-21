//
//  UISeparator.swift
//  UICodeKit
//
//  Created by Victor Alves de Freitas on 20/09/22.
//

import Foundation

open class UISeparator: BaseView {
    private let view = UIView() .. {
        $0.backgroundColor = .lightGray
        $0.height(1)
    }
    
    open override func body() -> UICodeView? {
        UIStack(axis: .horizontal) {
            view
        }
    }
}
