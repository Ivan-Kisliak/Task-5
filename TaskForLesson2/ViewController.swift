//
//  ViewController.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 3.09.24.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    
    private let randomUserLabel = UILabel()
    private let showNewUserButton = CustomButton(title: "Show New User",
                                                 backgroundColor: .systemRed,
                                                 isShadow: false)
    private let hideUserButton = CustomButton(title: "HideUser",
                                              backgroundColor: .systemGreen,
                                              isShadow: true)

    private let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateHelper()
        printPersonFullName()
        setupView()
    }
    
    private func updateHelper() {
        helper.addUsers(userRepository.getUsers())
    }
    
    private func printPersonFullName() {
        helper.getUsers().forEach { print($0.personInfo.fullName) }
    }
    
    private func setupRandomUserLabel() {
        let randomUser = helper.getRandomUser()?.personInfo.fullName
        randomUserLabel.text = randomUser
        randomUserLabel.textAlignment = .center
        randomUserLabel.font = UIFont.systemFont(ofSize: 25)
        randomUserLabel.textColor = .blue
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        
        stackView.addArrangedSubview(randomUserLabel)
        stackView.addArrangedSubview(showNewUserButton)
        stackView.addArrangedSubview(hideUserButton)
    }
       
    private func setupView() {
        view.backgroundColor = .lightGray.withAlphaComponent(0.9)
        
        setupRandomUserLabel()
        setupStackView()
        view.addSubview(stackView)
        setupLayuot()
    }
    
    private func setupLayuot() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
        ])
    }
}

