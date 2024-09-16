//
//  Helper.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 9.09.24.
//

import Foundation

class Helper {
    
    private var users: [User] = []
    
    func addUser(_ user: User) { // В задании не указано надо ли удалять этот
        users.append(user)       // метод :) Поэтому оставил его, но мне кажется
    }                            // что оставлять неиспользуемый метод не очень.
    
    func addUsers(_ users: [User]) {
        self.users.append(contentsOf: users)
    }
    
    func getUsers() -> [User] {
        users
    }
}


