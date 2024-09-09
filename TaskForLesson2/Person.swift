//
//  Person.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 7.09.24.
//

import Foundation

class Person {
    
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
}
