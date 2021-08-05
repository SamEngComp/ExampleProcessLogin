//
//  SignInViewController.swift
//  ExampleProcessLogin
//
//  Created by Samuel Sales on 27/04/21.
//

import UIKit

class SignInViewControllerModal: UIViewController {
    
    var signInViewEmail = SignInViewEmail()
    var signInViewPassword = SignInViewPassword()
    var stageScreen = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
        view = signInViewEmail
    }
    
    func configureNavBar() {
        let leftButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(leftButtonAction))
        let rightButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(rightButtonAction))
        navigationItem.setRightBarButton(rightButton, animated: false)
        navigationItem.setLeftBarButton(leftButton, animated: false)
    }
    
}

extension SignInViewControllerModal {
    
    @objc func leftButtonAction() {
        if stageScreen == 0 {
            dismiss(animated: true, completion: nil)
        } else {
            navigationItem.rightBarButtonItem?.title = "Next"
            navigationItem.leftBarButtonItem?.title = "Cancel"
            view = signInViewEmail
            signInViewPassword.inputPassword.text = ""
            stageScreen = 0
        }
    }
    
    @objc func rightButtonAction() {
        if stageScreen == 0 {
            stageScreen = 1
            navigationItem.rightBarButtonItem?.title = "Login"
            navigationItem.leftBarButtonItem?.title = "Back"
            view = signInViewPassword
        } else {
            initialValidate()
        }
    }
    
    func initialValidate() {
        //guard let email = signInViewEmail.inputEmail.text,
              //let password = signInViewPassword.inputPassword.text else { return }
    }
    
}
