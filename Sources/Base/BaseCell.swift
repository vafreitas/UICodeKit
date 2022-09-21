//
//  BaseCell.swift
//  Components
//
//  Created by Victor Freitas on 19/06/21.
//

import UIKit

open class BaseCollectionViewCell: UICollectionViewCell {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
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
    
    open func body() -> UICodeView? { return nil }
}

open class BaseTableViewCell: UITableViewCell {
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
    
    open func body() -> UICodeView? { return nil }
}
