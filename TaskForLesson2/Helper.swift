//
//  Helper.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 9.09.24.
//

import Foundation

class Helper {
    
    var persons: [Person] = []
    
    func addPerson(_ person: Person) {
        persons.append(person)
    }
    
    func getPerson() -> [Person] {
        persons
    }
}
