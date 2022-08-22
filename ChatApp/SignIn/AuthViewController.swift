//
//  ViewController.swift
//  ChatApp
//
//  Created by Данила on 19.08.2022.
//

import UIKit

class AuthViewController: UIViewController {

    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let loginLabel = UILabel(text: "Already onboard?")
    
    let logoImageView = UIImageView(image: UIImage(named: "Logo"), contentMode: .scaleAspectFit)
    
    
    let buttonEmail = UIButton(backgroundColor: .buttonDark(), titleColor: .white, title: "Email", isShadow: false, font: .avenir20(), cornerRadius: 4)
    let buttonLogin = UIButton(backgroundColor: .white, titleColor: .buttonRed(), title: "Login", isShadow: true, font: .avenir20(), cornerRadius: 4)
    let buttonGoole = UIButton(backgroundColor: .white, titleColor: .black, title: "Google", isShadow: true, font: .avenir20(), cornerRadius: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        buttonGoole.customizeGoogleButton()
        setUpConstraints()
    }
}

extension AuthViewController {
    private func setUpConstraints() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoImageView)
        let googleView = ButtonFormView(label: googleLabel, button: buttonGoole)
        let emailView = ButtonFormView(label: emailLabel, button: buttonEmail)
        let loginView = ButtonFormView(label: loginLabel, button: buttonLogin)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 85),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}

import SwiftUI

struct AuthViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ConteinerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ConteinerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<AuthViewControllerProvider.ConteinerView>) -> AuthViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: AuthViewControllerProvider.ConteinerView.UIViewControllerType, context: UIViewControllerRepresentableContext<AuthViewControllerProvider.ConteinerView>) {
            
        }
    }
}

