import UIKit

class SignInViewController: UIViewController, UserViewDelegate {

    let signInView = SignInView()
    let userPresenter = UserPresenter(userService: UserService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = signInView
        signInView.loginButton.addTarget(self, action: #selector(activeButtonLogin), for: .touchUpInside)
        userPresenter.setUserViewDelegate(userViewDelegate: self)
    }

    func fetchUser(user: User?) {
        if let user = user {
            signInView.labelUserDemonstration.text = "O Usuário foi encontrado!\nname: \(user.name)\nage: \(user.age)"
        } else {
            signInView.labelUserDemonstration.text = "O Usuário foi não encontrado!"
        }
    }

}

extension SignInViewController {
    @objc func activeButtonLogin() {
        guard let email = signInView.emailTextfield.text else { return }
        guard let password = signInView.passwordTextfield.text else { return }
        
        self.userPresenter.authenticateLogin(username: email, password: password)
    }
}

