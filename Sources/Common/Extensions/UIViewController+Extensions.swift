//
//  UIViewController+Extensions.swift
//  AloeStackView
//
//  Created by Victor Alves de Freitas on 18/09/22.
//

import UIKit
import SwiftUI

@available(iOS 13, *)
extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
        let viewController: UIViewController

        func makeUIViewController(context: Context) -> UIViewController {
            return viewController
        }

        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    }

    public func toPreview() -> some View {
        Preview(viewController: self)
    }
}
