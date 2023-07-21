//
//  Wrapper.swift
//  Components
//
//  Created by Victor Freitas on 18/06/21.
//

import UIKit
import TinyConstraints

open class Wrapper: UICodeView {
    
    public init (@UICodeBuilder _ content: () -> UIView) {
        super.init(frame: .zero)
        let subview = content().subviews.first ?? UIView()
        addSubview(subview)
        height(to: subview)
    }
    
    public init(_ view: UIView, position: WrapperPositions, offset: CGFloat = 0, align: WrapperAlignments = .centerY) {
        super.init(frame: .zero)
        addSubview(view)
        alignOn(view, alignment: align)
        setPositionOf(view, position: position, spacing: offset)
        height(to: view)
    }
    
    public init(_ views: [UIStack], order: WrapperOrder, position: WrapperPositions, spacing: CGFloat = 0, align: WrapperAlignments = .centerY) {
        super.init(frame: .zero)
        for index in 0..<views.count {
            addSubview(views[index])
            alignOn(views[index], alignment: align)
            
            if index == 0 {
                setPositionOf(views[index], position: position, spacing: spacing)
            } else if index < views.count {
                switch order {
                case .topToBottom:
                    if position == .left || position == .right || position == .centerX || position == .centerY {
                        setPositionOf(views[index], position: position, spacing: spacing)
                    }
                    
                    views[index].topToBottom(of: views[index - 1], offset: spacing)
                    
                case .bottomToTop:
                    if position == .left || position == .right || position == .centerX || position == .centerY {
                        setPositionOf(views[index], position: position, spacing: spacing)
                    }
                    
                    views[index].bottomToTop(of: views[index - 1], offset: spacing)
                    
                case .rightToLeft:
                    views[index].trailingToLeading(of:views[index - 1], offset: -spacing)
                case .leftToRight:
                    views[index].leadingToTrailing(of: views[index - 1], offset: spacing)
                }
            }
        }
    }
    
    public init(_ views: [UIView], order: WrapperOrder, position: WrapperPositions, spacing: CGFloat = 0, align: WrapperAlignments = .centerY) {
        super.init(frame: .zero)
        for index in 0..<views.count {
            addSubview(views[index])
            alignOn(views[index], alignment: align)
            
            if index == 0 {
                setPositionOf(views[index], position: position, spacing: spacing)
            } else if index < views.count {
                switch order {
                case .topToBottom:
                    if position == .left || position == .right || position == .centerX || position == .centerY {
                        setPositionOf(views[index], position: position, spacing: spacing)
                    }
                    
                    views[index].topToBottom(of: views[index - 1], offset: spacing)
                    
                case .bottomToTop:
                    if position == .left || position == .right || position == .centerX || position == .centerY {
                        setPositionOf(views[index], position: position, spacing: spacing)
                    }
                    
                    views[index].bottomToTop(of: views[index - 1], offset: spacing)
                    
                case .rightToLeft:
                    views[index].trailingToLeading(of:views[index - 1], offset: -spacing)
                case .leftToRight:
                    views[index].leadingToTrailing(of: views[index - 1], offset: spacing)
                }
            }
        }
    }
    
    func alignOn(_ view: UIView, alignment: WrapperAlignments) {
        switch alignment {
        case .top:
            view.topToSuperview()
        case .bottom:
            view.bottomToSuperview()
        case .centerX:
            view.centerXToSuperview()
        case .centerY:
            view.centerYToSuperview()
        }
    }
    
    func setPositionOf(_ view: UIView, position: WrapperPositions, spacing: CGFloat) {
        switch position {
        case .top:
            view.topToSuperview(offset: spacing, usingSafeArea: true)
        case .bottom:
            view.bottomToSuperview(offset: -spacing, usingSafeArea: true)
        case .centerX:
            view.centerXToSuperview(offset: spacing)
        case .centerY:
            view.centerYToSuperview(offset: spacing)
        case .right:
            view.trailingToSuperview(offset: spacing)
        case .left:
            view.leadingToSuperview(offset: spacing)
        }
    }
    
    // MARK: Builder Methods
    
    public func setHeight(_ size: CGFloat) -> Wrapper {
        height(size)
        return self
    }
    
    public func setMaxHeight(_ size: CGFloat) -> Wrapper {
        height(min: 0, max: size)
        return self
    }
    
    public func position(_ position: WrapperPositions) -> Wrapper {
        setPositionOf(self.subviews.first ?? UIView(), position: position, spacing: 0)
        return self
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

public enum WrapperOrder {
    case rightToLeft
    case leftToRight
    case topToBottom
    case bottomToTop
}

public enum WrapperPositions {
    case top
    case bottom
    case centerY
    case centerX
    case right
    case left
}

public enum WrapperAlignments {
    case top
    case bottom
    case centerX
    case centerY
}
