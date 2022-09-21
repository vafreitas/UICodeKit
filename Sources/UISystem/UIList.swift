//
//  UIList.swift
//  UICodeKit
//
//  Created by Victor Alves de Freitas on 20/09/22.
//

import UIKit

//open class UIList: UITableView, UITableViewDelegate, UITableViewDataSource {
//    private let range: Range<Int>
//    private let cellType: UITableViewCell.Type
//    
//    public typealias Content<Element> = (_ cell: Element) -> UIView
//    
//    public init<Element>(style: UITableView.Style = .plain, _ range: Range<Int>, _ cell: Element.Type, @UICodeBuilder _ content: @escaping Content<Element>) where Element: UITableViewCell {
//        self.range = range
//        self.cellType = cell
//        super.init(frame: .zero, style: style)
//        
//        registerCell(type: cellType)
//    }
//    
//    required public init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        range.count
//    }
//    
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueCell(withType: cellType, for: indexPath) else {
//            return UITableViewCell()
//        }
//        
////        _ = content(cell)
//        return cell
//    }
//}

public extension UITableView {
    func registerCell(type: UITableViewCell.Type, identifier: String? = nil) {
        let cellId = String(describing: type)
        register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: identifier ?? cellId)
    }
    
    func register(cellClass: UITableViewCell.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.identifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(of class: T.Type,
                                                        for indexPath: IndexPath,
                                                        configure: @escaping ((T) -> Void) = { _ in }) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: T.identifier, for: indexPath)
        if let typedCell = cell as? T {
            configure(typedCell)
        }
        return cell
    }
    
}

public extension UIView {
    static var identifier: String {
        return String(describing: self)
    }
}


public extension UICollectionView {
    
    func register(_ cell: UICollectionViewCell.Type) {
        let bundle = Bundle(for: cell)
        let nib = UINib(nibName: cell.identifier, bundle: bundle)
        register(nib, forCellWithReuseIdentifier: cell.identifier)
    }
    
    func register(cellClass: UICollectionViewCell.Type) {
        register(cellClass, forCellWithReuseIdentifier: cellClass.identifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(of class: T.Type,
                                                      for indexPath: IndexPath,
                                                      configure: @escaping ((T) -> Void) = { _ in }) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: T.identifier, for: indexPath)
        if let typedCell = cell as? T {
            configure(typedCell)
        }
        return cell
    }
}
