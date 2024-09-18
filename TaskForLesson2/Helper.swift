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
    
    func addUsers(_ users: [User]) {
        self.users.append(contentsOf: users)
    }
    
    func getUsers() -> [User] {
        users
    }
    
    func getRandomUser() -> User? {
        users.randomElement()
    }
    
}


