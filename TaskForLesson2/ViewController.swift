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
    
    private let showFullNameButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()

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
        randomUserLabel.font = UIFont.systemFont(ofSize: 25)
        randomUserLabel.textColor = .blue
        randomUserLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
       
    private func setupView() {
        view.backgroundColor = .lightGray
//        view.alpha = 0.1 //убрал чтобы видеть label
        
        setupRandomUserLabel()
        view.addSubview(randomUserLabel)
        view.addSubview(showFullNameButton)
    }
    
}

