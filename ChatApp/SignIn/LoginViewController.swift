//
//  LoginViewController.swift
//  ChatApp
//
//  Created by Данила on 20.08.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    let welcomeLabel = UILabel(text: "Welcome Back!", font: .avenir26())
    
    let loginWithLabel = UILabel(text: "Login with", font: .avenir20())
    let orLabel = UILabel(text: "or", font: .avenir20())
    let emailLabel = UILabel(text: "Email", font: .avenir20())
    let passwordLabel = UILabel(text: "Password", font: .avenir20())
    let accountLabel = UILabel(text: "Need an account?", font: .avenir20())
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.buttonRed(), for: .normal)
        button.titleLabel?.font = .avenir20()
        button.contentHorizontalAlignment = .leading
        return button
    }()
    
    let googleButton = UIButton(backgroundColor: .white, titleColor: .black, title: "Google", isShadow: true, font: .avenir20(), cornerRadius: 4)
    let loginButton = UIButton(backgroundColor: .buttonDark(), titleColor: .white, title: "Login", isShadow: false, font: .avenir20(), cornerRadius: 4)
    
    let emailTextField = OneLineTextField(font: .avenir20())
    let passwordTextField = OneLineTextField(font: .avenir20())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        googleButton.customizeGoogleButton()
        setUpConstraints()
    }
}

extension LoginViewController {
    private func setUpConstraints() {
        let loginWithView = ButtonFormView(label: loginWithLabel, button: googleButton)
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField], axis: .vertical, spacing: 0)
        loginButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        let stackView = UIStackView(arrangedSubviews: [loginWithView, orLabel, emailStackView, passwordStackView, loginButton], axis: .vertical, spacing: 40)
        let bottomStackView = UIStackView(arrangedSubviews: [accountLabel, signUpButton], axis: .horizontal, spacing: 10)
        bottomStackView.alignment = .firstBaseline
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 85),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            bottomStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 32)
        ])
        
    }
}




import SwiftUI

struct LoginViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ConteinerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ConteinerView: UIViewControllerRepresentable {
        let loginVC = LoginViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<LoginViewControllerProvider.ConteinerView>) -> LoginViewController {
            return loginVC
        }
        func updateUIViewController(_ uiViewController: LoginViewControllerProvider.ConteinerView.UIViewControllerType, context: UIViewControllerRepresentableContext<LoginViewControllerProvider.ConteinerView>) {
            
        }
    }
}
