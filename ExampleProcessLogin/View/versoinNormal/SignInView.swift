import UIKit

class SignInView: UIView {
    
    lazy var emailTextfield: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Email"
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    lazy var passwordTextfield: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Password"
        view.isSecureTextEntry = true
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Login", for: .normal)
        view.backgroundColor = .blue
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    lazy var signUpButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Sign Up", for: .normal)
        view.backgroundColor = .none
        view.setTitleColor(.blue, for: .normal)
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    lazy var labelUserDemonstration: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.textColor = .black
        view.numberOfLines = 4
        view.textAlignment = .center
        return view
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .white
        setupViewHierarchy()
        setupConstraints()
        accessibilityIdentifier = "learnView1"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy() {
        addSubview(emailTextfield)
        addSubview(passwordTextfield)
        addSubview(loginButton)
        addSubview(signUpButton)
        addSubview(labelUserDemonstration)
    }
    
    func setupConstraints() {
        setupConstraintsEmailTextfield()
        setupConstraintsPasswordTextfield()
        setupConstraintsLoginButton()
        setupConstraintsSignUpButton()
        setupConstraintsLabelUserDemonstration()
    }

}

extension SignInView {
    
    func setupConstraintsEmailTextfield() {
        NSLayoutConstraint.activate([
            emailTextfield.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            emailTextfield.topAnchor.constraint(equalTo: topAnchor, constant: 200),
            emailTextfield.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            emailTextfield.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupConstraintsPasswordTextfield() {
        NSLayoutConstraint.activate([
            passwordTextfield.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            passwordTextfield.topAnchor.constraint(equalTo: emailTextfield.bottomAnchor, constant: 25),
            passwordTextfield.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            passwordTextfield.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupConstraintsLoginButton() {
        NSLayoutConstraint.activate([
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            loginButton.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupConstraintsSignUpButton() {
        NSLayoutConstraint.activate([
            signUpButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            signUpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            signUpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupConstraintsLabelUserDemonstration() {
        NSLayoutConstraint.activate([
            labelUserDemonstration.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            labelUserDemonstration.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 20),
            labelUserDemonstration.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            labelUserDemonstration.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50)
        ])
    }
    
}
