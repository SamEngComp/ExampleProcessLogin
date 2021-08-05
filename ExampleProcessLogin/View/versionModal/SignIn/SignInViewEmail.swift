import UIKit

class SignInViewEmail: UIView {
    
    var signInTable = UITableView()
    var inputEmail = ModuleUITextField()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        configureTableView() 
        setupViewHierarchy()
        setupConstraints()
    }
    
    func setupViewHierarchy() {
        addSubview(signInTable)
    }
    
    func setupConstraints() {
        setupConstraintsSignInTable()
    }
    
    func configureTableView() {
        signInTable.rowHeight = 170
        signInTable.register(SignInTableViewCell.self, forCellReuseIdentifier: SignInTableViewCell.cellIdentifier)
        signInTable.dataSource = self
        signInTable.delegate = self
        signInTable.separatorStyle = .none
        signInTable.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension SignInViewEmail {
    func setupConstraintsSignInTable() {
        signInTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInTable.topAnchor.constraint(equalTo: topAnchor),
            signInTable.leadingAnchor.constraint(equalTo: leadingAnchor),
            signInTable.trailingAnchor.constraint(equalTo: trailingAnchor),
            signInTable.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

extension SignInViewEmail: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SignInTableViewCell.cellIdentifier, for: indexPath) as? SignInTableViewCell else {
            fatalError("Wrong idetifier")
        }
        inputEmail.placeholderActive(textPlaceholder: "Email")
        cell.emailTextfield = inputEmail
        cell.activeCell()
        return cell
    }
}
