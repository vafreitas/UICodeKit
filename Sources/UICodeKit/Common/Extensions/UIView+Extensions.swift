//
//  UIView+Extensions.swift
//  UICodeKit_Example
//
//  Created by Victor Freitas on 21/07/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit
import TinyConstraints
import SwiftUI

@available(iOS 13, *)
protocol UIKitViewRepresentable: UIViewRepresentable where UIViewType: UIView {
    func makeUIView(context: Context) -> UIViewType
    func updateUIView(_ uiView: UIViewType, context: Context)
}

@available(iOS 13, *)
struct GenericUIKitView<Content>: View where Content: UIView {
    let content: Content

    init(@UICodeBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        UIKitView(content: content)
    }

    private struct UIKitView: UIViewRepresentable {
        let content: Content

        func makeUIView(context: Context) -> Content {
            return content
        }

        func updateUIView(_ uiView: Content, context: Context) {
            // Atualize a visualização UIKit aqui, se necessário
        }
    }
}

extension UICodeView {
    public func padding(_ padding: Padding..., for type: PaddingType = .content) -> UICodeView {
        var paddings = PaddingModel()
        padding.forEach { padding in
            switch padding {
            case let .top(top):
                paddings.top = top
                
            case let .bottom(bottom):
                paddings.bottom = bottom
                
            case let .left(left):
                paddings.left = left
                
            case let .right(right):
                paddings.right = right
                
            case let .vertical(vertical):
                paddings.top = vertical
                paddings.bottom = vertical
                
            case let .horizontal(horizontal):
                paddings.left = horizontal
                paddings.right = horizontal
            }
        }
        
        let subview = UIView()
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.addSubview(self)
        
        switch type {
        case .content:
            translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: subview.topAnchor, constant: paddings.top),
                bottomAnchor.constraint(equalTo: subview.bottomAnchor, constant: -paddings.bottom),
                leadingAnchor.constraint(equalTo: subview.leadingAnchor, constant: paddings.left),
                trailingAnchor.constraint(equalTo: subview.trailingAnchor, constant: -paddings.right)
            ])
        }
        
        return subview
    }
    
    // MARK: Deprecated
    
    @available(*, deprecated, message: "This will be removed soon; please migrate to size(height:_ , width: _)")
    public func setHeight(_ size: CGFloat) -> UICodeView {
        height(size)
        return self
    }
    
    @available(*, deprecated, message: "This will be removed soon; please migrate to max(height:_ , width: _)")
    public func setMaxHeight(_ size: CGFloat) -> UICodeView {
        height(min: 0, max: size)
        return self
    }
    
    // MARK: Newest Size Functions
    
    public func size(height h: CGFloat = 0, width w: CGFloat = 0) -> UICodeView {
        if h != 0 { height(h) }
        if w != 0 { width(w) }
        return self
    }
    
    public func max(height h: CGFloat = 0, width w: CGFloat = 0) -> UICodeView {
        if h != 0 { height(min: 0, max: h) }
        if w != 0 { width(min: 0, max: w) }
        return self
    }
    
    // MARK: Newest Layer Functions
    
    public func radius(_ size: CGFloat) -> UICodeView {
        layer.cornerRadius = size
        return self
    }
    
    public func border(_ size: CGFloat, color: UIColor = .gray.withAlphaComponent(0.3)) -> UICodeView {
        layer.borderWidth = size
        layer.borderColor = color.cgColor
        return self
    }
    
    public func background(color: UIColor) -> UICodeView {
        backgroundColor = color
        return self
    }
}

