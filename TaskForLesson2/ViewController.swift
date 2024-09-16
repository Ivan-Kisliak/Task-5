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
       
    private func setupView() {
        view.backgroundColor = .systemGreen
        view.alpha = 0.1
    }
    
}

