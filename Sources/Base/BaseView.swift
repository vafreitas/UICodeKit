//
//  BaseView.swift
//  Components
//
//  Created by Victor Freitas on 14/06/21.
//

import UIKit
import TinyConstraints

open class BaseView: UIView {

    public init() {
        super.init(frame: .zero)
        configureSubviews()
        
        guard let body = body() else {
            return
        }
        
        addSubview(body)
        body.edgesToSuperview(usingSafeArea: true)
        
        configureConstraints()
        backgroundColor = .white
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureSubviews()
        
        guard let body = body() else {
            return
        }
        
        addSubview(body)
        body.edgesToSuperview(usingSafeArea: true)
        
        configureConstraints()
        backgroundColor = .white
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func configureSubviews() {}
    open func configureConstraints() {}
    
    open func body() -> UIView? { return nil }
}
