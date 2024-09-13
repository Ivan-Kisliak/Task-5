//
//  Helper.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 9.09.24.
//

import Foundation

class Helper {
    
    var users: [User] = []
    
    func addPerson(_ person: User) {
        users.append(person)
    }
    
    func getPerson() -> [User] {
        users
    }
}
