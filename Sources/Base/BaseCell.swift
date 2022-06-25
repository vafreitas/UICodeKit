//
//  BaseCell.swift
//  Components
//
//  Created by Victor Freitas on 19/06/21.
//

import UIKit

open class BaseCell: UITableViewCell {
    public init() {
        super.init(style: .default, reuseIdentifier: "")
        configureSubviews()
        
        guard let body = body() else {
            return
        }
        
        addSubview(body)
        body.edgesToSuperview(usingSafeArea: true)
        
        configureConstraints()
        backgroundColor = .white
        separatorInset = .left(40)
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func configureSubviews() {}
    open func configureConstraints() {}
    
    open func body() -> UIView? { return nil }
}
