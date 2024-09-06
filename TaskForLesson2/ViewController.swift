//
//  ViewController.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 3.09.24.
//

import UIKit

class ViewController: UIViewController {
    
    let name = "Иван"
    let surname = "Кисляк"
    
    var fullName: String {
        "\(name) \(surname)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(fullName), я создал свое второе приложение")
        
    }
}

