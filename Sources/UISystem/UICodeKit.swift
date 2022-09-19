//
//  UICodeKit.swift
//  UICodeKit
//
//  Created by Victor Alves de Freitas on 18/09/22.
//

import Foundation

@resultBuilder
public struct UICodeBuilder {
    static public func buildBlock(_ components: UIView...) -> UIView {
        let view = UIView()
        components.forEach { view.addSubview($0) }
        return view
    }
}

public protocol UICodeViewProtocol: UIView {}

public typealias UICodeView = UIView & UICodeViewProtocol


