//
//  Helper.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 9.09.24.
//

import Foundation

class Helper {
    
    private var users: [User] = []
    
    func addUser(_ user: User) {
        users.append(user)
    }
    
    func getUser() -> [User] {
        users
    }
}
