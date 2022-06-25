//
//  AdvancedOperators.swift
//  Core
//
//  Created by Victor Freitas on 15/06/21.
//

import Foundation

prefix operator ..
infix operator ..: MultiplicationPrecedence

/// Custom operator that lets you configure an instance inline
/// ```swift
/// self.frame = otherView.frame .. { $0.width = 1337 }
/// self.backgroundView = UIView() .. { $0.backgroundColor = .red }
/// ```
@discardableResult
// swiftlint:disable:next static_operator
public func .. <T>(object: T, configuration: (inout T) -> Void) -> T {
    var object = object
    configuration(&object)
    return object
}
