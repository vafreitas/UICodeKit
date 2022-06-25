//
//  VStackModel.swift
//  Components
//
//  Created by Victor Freitas on 19/06/21.
//

import UIKit

struct PaddingModel {
    var top: CGFloat = 0
    var bottom: CGFloat = 0
    var left: CGFloat = 0
    var right: CGFloat = 0
}

public enum PaddingType {
    case content
}

public enum Padding {
    case left(CGFloat)
    case right(CGFloat)
    case top(CGFloat)
    case bottom(CGFloat)
    case vertical(CGFloat)
    case horizontal(CGFloat)
}
