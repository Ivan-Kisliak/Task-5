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
                                                 backgroundColor: .systemRed)
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

}

//MARK: - Setup View
private extension ViewController {
    
    func setupView() {
        view.backgroundColor = .lightGray.withAlphaComponent(Constant.alpha90)
        
        setupRandomUserLabel()
        setupStackView()
        view.addSubViews([stackView])
        setupLayuot()
    }
    
    func setupRandomUserLabel() {
        let randomUser = helper.getRandomUser()?.personInfo.fullName
        randomUserLabel.text = randomUser
        randomUserLabel.textAlignment = .center
        randomUserLabel.font = UIFont.systemFont(ofSize: Constant.font25)
        randomUserLabel.textColor = .blue
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        
        stackView.addArrangedSubviews([randomUserLabel,
                                       showNewUserButton,
                                       hideUserButton])
    }
}

//MARK: - Setup Layout

private extension ViewController {
    
    func setupLayuot() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
        ])
    }
}

//MARK: - Nested Types

enum Constant {
    static let font25: CGFloat = 25
    static let alpha90: CGFloat = 0.9
}

