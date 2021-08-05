//
//  InitialStateViewController.swift
//  ExampleProcessLogin
//
//  Created by Samuel Sales on 26/04/21.
//

import UIKit

class InitialStateViewController: UIViewController {

    let initialStateView = InitialStateView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialStateView.delegate = self
        view = initialStateView
    }

}

extension InitialStateViewController: InitialStateViewButtonActionsDelegate {
    func signInButtonAction(sender: UIButton) {
        let navigation = UINavigationController()
        navigation.navigationBar.barTintColor = UIColor.white
        navigation.navigationBar.tintColor = UIColor.magenta
        navigation.navigationBar.shadowImage = UIImage()
        navigation.navigationBar.isTranslucent = false
        
        let signInViewController = SignInViewControllerModal()
        
        navigation.viewControllers = [signInViewController]
        
        navigation.modalPresentationStyle = .formSheet
        present(navigation, animated: true, completion: nil)
    }
    
    func signUpButtonAction(sender: UIButton) {
        
    }
    
}
