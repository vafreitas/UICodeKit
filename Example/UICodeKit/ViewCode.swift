//
//  Viewcode.swift
//  UICodeKit_Example
//
//  Created by Amanda  on 04/04/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import Foundation

protocol ViewCode {
    func buildViewHierrachy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension ViewCode {
    func setupView() {
         buildViewHierrachy()
         setupConstraints()
         setupAdditionalConfiguration()
    }
}

