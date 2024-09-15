//
//  ViewController.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 3.09.24.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    private let firstPerson = Person(name: "Иван", surname: "Иванов")
    private let secondPerson = Person(name: "Петр", surname: "Петров")
    private let thirdPerson = Person(name: "Василий", surname: "Васильев")
    
    private lazy var firstUser = User(login: "Ivan",
                                 password: "123",
                                 personInfo: firstPerson)
    private lazy var secondUser = User(login: "Petr",
                                 password: "456",
                                 personInfo: secondPerson)
    private lazy var thirdUser = User(login: "Vas",
                                      password: "789",
                                      personInfo: thirdPerson)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateHelper()
        printPersonFullName()

    }
    
    private func updateHelper() {
        helper.addUser(firstUser)
        helper.addUser(secondUser)
        helper.addUser(thirdUser)
    }
    
    private func printPersonFullName() {
        helper.getUser().forEach { print($0.personInfo.fullName) }
    }
    
}

