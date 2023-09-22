//
//  HomeView.swift
//  UICodeKit_Example
//
//  Created by Victor Freitas on 04/04/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import SwiftUI

class HomeView: BaseView {
    
    // MARK: Actions
    
    var createAccountAction: UICodeDefaultAction?
    
    // MARK: Properties
    
    // Statistics
    
    lazy var cardStatisticsTitleLabel = UILabel() .. {
        $0.text = "Statistics"
        $0.font = .systemFont(ofSize: 22, weight: .medium)
    }
    
    lazy var cardStatisticsMonthLabel = UILabel() .. {
        $0.text = "this month"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textAlignment = .right
    }
    
    lazy var cardStatistics = UIStack(axis: .vertical) {
        UIStack(axis: .vertical) {
            UIStack(axis: .horizontal) {
                cardStatisticsTitleLabel
                cardStatisticsMonthLabel
            }
        }
        .padding(.horizontal(16))
        
    }
    
    // MARK: Body
    
    override func body() -> UICodeView? {
        UIStack(axis: .vertical) {
            CardHeaderView()
            
            cardStatistics
                .size(height: 100)
                .radius(10)
                .border(0.5)
                .background(color: .white)

            UISpacer()
        }
        .padding(.top(24), .horizontal(16))
        .. {
            $0.backgroundColor = .blue.withAlphaComponent(0.03)
        }
    }
    
    // MARK: Actions
    
    @objc func createAccountTapped() {
        createAccountAction?()
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeController().toPreview()
    }
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
