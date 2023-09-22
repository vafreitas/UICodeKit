//
//  CardHeaderView.swift
//  UICodeKit_Example
//
//  Created by Victor Freitas on 21/09/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import SwiftUI

class CardHeaderView: BaseView {
    
    // MARK: Properties
    
    lazy var cardHeaderTitleLabel = UILabel() .. {
        $0.text = "Monthly Budget"
        $0.font = .systemFont(ofSize: 22, weight: .medium)
    }
    
    lazy var cardHeaderValueLabel = UILabel() .. {
        $0.text = "$7,320"
        $0.font = .systemFont(ofSize: 20, weight: .medium)
    }
    
    lazy var cardHeaderSubtitleLabel = UILabel() .. {
        $0.text = "spent $5,124"
        $0.font = .systemFont(ofSize: 14, weight: .medium)
    }
    
    lazy var cardHeaderSubtitleValueLabel = UILabel() .. {
        $0.text = "left $1,281"
        $0.font = .systemFont(ofSize: 14, weight: .medium)
        $0.textAlignment = .right
    }
    
    override func body() -> UICodeView? {
        UIStack(axis: .vertical, spacing: 0, distribution: .fillEqually) {
            UIStack(axis: .horizontal) {
                cardHeaderTitleLabel
                cardHeaderValueLabel
            }
            .padding(.horizontal(16))
            
            UIStack(axis: .horizontal) {
                cardHeaderSubtitleLabel
                cardHeaderSubtitleValueLabel
            }
            .padding(.horizontal(16))
        }
        .size(height: 100)
        .radius(10).border(0.5)
        .background(color: .white)
    }
}

struct CardHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GenericUIKitView {
            return UIComponent(background: .gray.withAlphaComponent(0.05)) {
                CardHeaderView()
            }
            .sizePreview(width: 350)
        }
    }
}
