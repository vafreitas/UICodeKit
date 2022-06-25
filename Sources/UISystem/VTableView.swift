//
//  VTableView.swift
//  Components
//
//  Created by Victor Freitas on 15/06/21.
//

import UIKit

open class VTableView: UITableView {
    
    // MARK: Initializer
    
    public init(style: UITableView.Style = .plain, height size: CGFloat = 0, delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        super.init(frame: .zero, style: style)
        self.delegate = delegate
        self.dataSource = dataSource
        backgroundColor = .white
        
//        if size == 0 {
//            edgesToSuperview()
//        } else {
//            height(size)
//        }
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
