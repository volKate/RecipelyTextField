// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public class RecipelyTextField: UITextField {
    public init() {
        super.init(frame: .zero)
        setupTextField()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func setupTextField() {
        borderStyle = .none
        layer.borderColor = UIColor.systemGray.cgColor
        layer.borderWidth = 1
        clearButtonMode = .whileEditing
        backgroundColor = .white
        clipsToBounds = true
        layer.cornerRadius = 12
        leftViewMode = .always
        rightViewMode = .always
    }
}
