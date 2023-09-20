
//  Home.swift
//  UICodeKit_Example
//
//  Created by Victor Alves de Freitas on 21/03/23.
//  Copyright © 2023 CocoaPods. All rights reserved.


import UIKit
import SwiftUI
import UICodeKit

class HomeController: UIViewController {

    private lazy var label: UILabel = {
        var label = UILabel()
        label.text = "Bem vindo(a) coloque seu nome abaixo:"
        label.font = .systemFont(ofSize: 28, weight: .semibold)
        label.numberOfLines = 0
        return label
    }()

    private lazy var text: UITextField = {
        var text = UITextField()
        text.placeholder = "Nome Completo"
        text.font = .systemFont(ofSize: 18)
        return text
    }()

    private lazy var button: UIButton = {
        var button = UIButton()
        button.setTitle("Continuar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension HomeController: ViewCode {
    func buildViewHierrachy() {
        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(text)
        view.addSubview(button)
    }

    func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])

        text.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 40),
            text.leadingAnchor.constraint(equalTo: label.leadingAnchor),
            text.trailingAnchor.constraint(equalTo: label.trailingAnchor)

        ])

        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            button.heightAnchor.constraint(equalToConstant: 48)
        ])

    }

    func setupAdditionalConfiguration() {

    }


}

struct HomeController_Previews2: PreviewProvider {
    static var previews: some View {
        HomeController().toPreview()
    }
}
