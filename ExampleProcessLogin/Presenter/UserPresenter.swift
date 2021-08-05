//
//  UserPresenter.swift
//  ExampleProcessLogin
//
//  Created by Samuel Sales on 05/08/21.
//

import Foundation

protocol UserViewDelegate: NSObjectProtocol {
    func fetchUser(user: User?)
}

class UserPresenter {
    private let userService: UserService
    weak private var userViewDelegate: UserViewDelegate?
    
    init(userService: UserService) {
        self.userService = userService
    }
    
    func setUserViewDelegate(userViewDelegate: UserViewDelegate) {
        self.userViewDelegate = userViewDelegate
    }
    
    func authenticateLogin(username: String, password: String) {
        userService.getUser(username: username, password: password) { [weak self] user in
            self?.userViewDelegate?.fetchUser(user: user)
        }
    }
    
}
