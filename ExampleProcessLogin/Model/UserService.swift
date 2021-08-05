//
//  UserService.swift
//  ExampleProcessLogin
//
//  Created by Samuel Sales on 05/08/21.
//

import Foundation

class UserService {
    let users: [User] = [
        User(id: 0, name: "Samuel Sales", username: "salessamuel", password: "12345", age: 21),
        User(id: 1, name: "Maria Lucia", username: "luciamaria", password: "54321", age: 54),
        User(id: 2, name: "Antoniel Bernardo", username: "nielbernardo", password: "12345", age: 31)
    ]
    
    func getUser(username: String, password: String, callback: (User?) -> Void) {
        if let foundUser = users.first(where: {$0.username == username && $0.password == password}) {
            callback(foundUser)
        } else {
            callback(nil)
        }
    }
    
}
