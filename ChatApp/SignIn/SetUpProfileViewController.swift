//
//  SetUpProfileViewController.swift
//  ChatApp
//
//  Created by Данила on 20.08.2022.
//

import UIKit


class SetUpProfileViewController: UIViewController {
    
    let fullImageView = AddPhotoView()
    
    let welcomeLabel = UILabel(text: "Set Up Profile", font: .avenir26())
    let fullNameLabel = UILabel(text: "Full Name", font: .avenir20())
    let aboutLabel = UILabel(text: "About me", font: .avenir20())
    let sexLabel = UILabel(text: "Sex", font: .avenir20())
    
    let fullNameTextField = OneLineTextField(font: .avenir20())
    let aboutTextField = OneLineTextField(font: .avenir20())
    
    let sexSegmenControl = UISegmentedControl(first: "Male", second: "Famail")
    let goButton = UIButton(backgroundColor: .buttonDark(), titleColor: .white, title: "Login", isShadow: false, font: .avenir20(), cornerRadius: 4)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpConstraints()
        view.backgroundColor = .white
    }
}




extension SetUpProfileViewController {
    private func setUpConstraints() {
        let fullNameStackView = UIStackView(arrangedSubviews: [fullNameLabel, fullNameTextField], axis: .vertical, spacing: 0)
        let aboutStackView = UIStackView(arrangedSubviews: [aboutLabel, aboutTextField], axis: .vertical, spacing: 0)
        let sexStackVIew = UIStackView(arrangedSubviews: [sexLabel, sexSegmenControl], axis: .vertical, spacing: 10)
        let stackView = UIStackView(arrangedSubviews: [fullNameStackView, aboutStackView, sexStackVIew, goButton], axis: .vertical, spacing: 40)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        fullImageView.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        view.addSubview(fullImageView)
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fullImageView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
            fullImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: fullImageView.bottomAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        goButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
}

import SwiftUI

struct SetUpProfileViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ConteinerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ConteinerView: UIViewControllerRepresentable {
        let setUpProfileVC = SetUpProfileViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SetUpProfileViewControllerProvider.ConteinerView>) -> SetUpProfileViewController {
            return setUpProfileVC
        }
        func updateUIViewController(_ uiViewController: SetUpProfileViewControllerProvider.ConteinerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SetUpProfileViewControllerProvider.ConteinerView>) {
            
        }
    }
}
