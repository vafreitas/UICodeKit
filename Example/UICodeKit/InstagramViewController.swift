//
//  InstagramViewController.swift
//  UICodeKit_Example
//
//  Created by Amanda Malaman on 28/04/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit
import SwiftUI
import UICodeKit

class InstagramViewController: UIViewController {
    
    var blueColor: UIColor = .init(red: 31/255, green: 110/255, blue: 237/255, alpha: 1)
    
    private lazy var instaImageView: UIImageView = {
        var instaImageView = UIImageView()
        instaImageView.image = UIImage(named: "logoinsta")
        instaImageView.contentMode = .scaleAspectFit
        return instaImageView
    }()
    
    private lazy var userTextField: UITextField = {
        var userTextField = UITextField()
        userTextField.placeholder = "Nome de usuário, email ou número de celular"
        userTextField.borderStyle = .roundedRect
        return userTextField
    }()
    
    
    private lazy var passwordTextField: UITextField = {
        var passwordTextField = UITextField()
        passwordTextField.placeholder = "Senha"
        passwordTextField.borderStyle = .roundedRect
        return passwordTextField
    }()
    
    private lazy var enterButton: UIButton = {
        var enterButton = UIButton()
        enterButton.setTitle("Entrar", for: .normal)
        enterButton.backgroundColor = blueColor
        enterButton.layer.cornerRadius = 4
        return enterButton
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        var forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("Esqueceu a senha?", for: .normal)
        forgotPasswordButton.setTitleColor(.black, for: .normal)
        forgotPasswordButton.titleLabel?.font = .systemFont(ofSize: 14)
        return forgotPasswordButton
    }()
    
    private lazy var createNewAccountButton: UIButton = {
        var createNewAccountButton = UIButton()
        createNewAccountButton.setTitle("Criar nova conta", for: .normal)
        createNewAccountButton.setTitleColor(blueColor, for: .normal)
        createNewAccountButton.layer.borderColor = blueColor.cgColor
        createNewAccountButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        createNewAccountButton.layer.borderWidth = 1
        createNewAccountButton.layer.cornerRadius = 4
        return createNewAccountButton
    }()
    
    private lazy var metaImageView: UIImageView = {
        var metaImageView = UIImageView()
        metaImageView.image = UIImage(named: "logometa")
        metaImageView.contentMode = .scaleAspectFit
        return metaImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension InstagramViewController: ViewCode {
    func buildViewHierrachy() {
        view.backgroundColor = .init(red: 240/255, green: 246/255, blue: 247/255, alpha: 1)
        view.addSubview(instaImageView)
        view.addSubview(userTextField)
        view.addSubview(passwordTextField)
        view.addSubview(enterButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(createNewAccountButton)
        view.addSubview(metaImageView)
    }
    
    func setupConstraints() {
        instaImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            instaImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            instaImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            instaImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -50),
            instaImageView.widthAnchor.constraint(equalToConstant: 60),
            instaImageView.heightAnchor.constraint(equalToConstant: 60)
            
        ])
        userTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userTextField.topAnchor.constraint(equalTo: instaImageView.bottomAnchor, constant: 85),
            userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
            userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            userTextField.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: userTextField.leadingAnchor,constant: 0),
            passwordTextField.trailingAnchor.constraint(equalTo: userTextField.trailingAnchor, constant: -0),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            enterButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            enterButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            enterButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            enterButton.heightAnchor.constraint(equalToConstant: 45)
            
        ])
        
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            forgotPasswordButton.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 10),
            forgotPasswordButton.leadingAnchor.constraint(equalTo: enterButton.leadingAnchor),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: enterButton.trailingAnchor)
        ])
        
        createNewAccountButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createNewAccountButton.bottomAnchor.constraint(equalTo:view.bottomAnchor, constant: -70),
            createNewAccountButton.leadingAnchor.constraint(equalTo: forgotPasswordButton.leadingAnchor),
            createNewAccountButton.trailingAnchor.constraint(equalTo: forgotPasswordButton.trailingAnchor),
            createNewAccountButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
        metaImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            metaImageView.topAnchor.constraint(equalTo: createNewAccountButton.bottomAnchor, constant: 10),
            metaImageView.leadingAnchor.constraint(equalTo: createNewAccountButton.leadingAnchor),
            metaImageView.trailingAnchor.constraint(equalTo: createNewAccountButton.trailingAnchor),
            metaImageView.widthAnchor.constraint(equalToConstant: 40),
            metaImageView.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    func setupAdditionalConfiguration() {
        
    }
    
    
}

struct InstagramViewController_Previews2: PreviewProvider {
    static var previews: some View {
        InstagramViewController().toPreview()
    }
}

