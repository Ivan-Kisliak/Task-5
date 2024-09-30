//
//  UserRepository.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 16.09.24.
//

import Foundation

class UserRepository {
    
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
    
    func getUsers() -> [User] {
        var users = [User]()
                
        users.append(contentsOf: [firstUser, secondUser, thirdUser])
        
        return users
    }
    
}
