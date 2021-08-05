import UIKit

class SignInTableViewCell: UITableViewCell {
    
    var emailTextfield: ModuleUITextField?
    static let cellIdentifier = "SignInTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func activeCell() {
        setupViewHierarchy()
        setupEmailTextfieldConstraints()
    }
    
    func setupViewHierarchy() {
        guard let emailTextfield = emailTextfield else { return }
        contentView.addSubview(emailTextfield)
    }
    
    func setupConstraints() {
        setupEmailTextfieldConstraints()
    }

}

extension SignInTableViewCell {
    func setupEmailTextfieldConstraints() {
        guard let emailTextfield = emailTextfield else { return }
        emailTextfield.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailTextfield.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            emailTextfield.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextfield.heightAnchor.constraint(equalToConstant: 50),
            emailTextfield.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
}
