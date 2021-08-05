import UIKit

protocol InitialStateViewButtonActionsDelegate: class {
    func signInButtonAction(sender: UIButton)
    func signUpButtonAction(sender: UIButton)
}

class InitialStateView: UIView {
    
    weak var delegate: InitialStateViewButtonActionsDelegate?
    
    lazy var signUpButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 2.0
        view.layer.borderColor = CGColor(red: 225.0, green: 0.0, blue: 225.0, alpha: 1.0)
        view.setTitleColor(.magenta, for: .normal)
        view.setTitle("SignUp", for: .normal)
        view.layer.cornerRadius = 5
        view.addTarget(self, action: #selector(signUpButtonActive), for: .touchUpInside)
        return view
    }()

    lazy var signInButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("SignIn", for: .normal)
        view.backgroundColor = .magenta
        view.layer.cornerRadius = 5
        view.addTarget(self, action: #selector(signInButtonActive), for: .touchUpInside)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy() {
        addSubview(signUpButton)
        addSubview(signInButton)
    }
    
    func setupConstraints() {
        setupConstraintsSignUp()
        setupConstraintsSignIn()
    }
    
}

extension InitialStateView {
    
    func setupConstraintsSignIn() {
        NSLayoutConstraint.activate([
            signInButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50.0),
            signInButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50.0),
            signInButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100.0),
            signInButton.heightAnchor.constraint(equalToConstant: 50.0)
        ])
    }
    
    func setupConstraintsSignUp() {
        NSLayoutConstraint.activate([
            signUpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50.0),
            signUpButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50.0),
            signUpButton.bottomAnchor.constraint(equalTo: signInButton.topAnchor, constant: -25.0),
            signUpButton.heightAnchor.constraint(equalToConstant: 50.0)
        ])
    }
    
    @objc func signInButtonActive(sender: UIButton) {
        delegate?.signInButtonAction(sender: signInButton)
    }
    
    @objc func signUpButtonActive() {
        delegate?.signUpButtonAction(sender: signUpButton)
    }
    
}
