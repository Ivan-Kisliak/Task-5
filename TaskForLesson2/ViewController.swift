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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateHelper()
        printPersonFullName()

    }
    
    private func updateHelper() {
        helper.addPerson(firstPerson)
        helper.addPerson(secondPerson)
        helper.addPerson(thirdPerson)
    }
    
    private func printPersonFullName() {
        helper.getPerson().forEach { print($0.fullName) }
    }
    
}

