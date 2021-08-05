import Foundation
import UIKit

extension UIFont {
    static func rounded(size: CGFloat, weight: Weight = .regular) -> UIFont {
        let font = UIFont.systemFont(ofSize: size, weight: weight)
        guard let descriptor = font.fontDescriptor.withDesign(.rounded) else { return font }
        let roundedFont = UIFont(descriptor: descriptor, size: size)
        return roundedFont
    }
}
