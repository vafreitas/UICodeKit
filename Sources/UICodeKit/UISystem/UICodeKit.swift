//
//  UICodeKit.swift
//  UICodeKit
//
//  Created by Victor Alves de Freitas on 18/09/22.
//

import UIKit

@resultBuilder
public struct UICodeBuilder {
    static public func buildBlock(_ components: UIView...) -> UIView {
        let view = UIView()
        components.forEach { view.addSubview($0) }
        return view
    }
    
    public static func buildFinalResult(_ component: UIView) -> UIView {
        component
    }
}

public protocol UICodeViewProtocol: UIView {}

public typealias UICodeView = UIView


