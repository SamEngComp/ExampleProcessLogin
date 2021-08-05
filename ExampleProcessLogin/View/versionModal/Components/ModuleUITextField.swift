import UIKit

class ModuleUITextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureInputTextField()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureInputTextField() {
        borderStyle = .none
        backgroundColor = .clear
        font = UIFont.rounded(size: 30, weight: .medium)
        tintColor = .magenta
        textColor = .magenta
    }
    
    func placeholderActive(textPlaceholder: String)  {
        attributedPlaceholder = NSAttributedString(string: textPlaceholder, attributes: [
            .foregroundColor: UIColor.magenta.withAlphaComponent(0.5),
            .font: UIFont.rounded(size: 30, weight: .medium)
        ])
    }

}
