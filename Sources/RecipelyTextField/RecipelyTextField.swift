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

    public func configure(with config: RecipelyTextFieldConfig) {
        placeholder = config.placeholder
        if let image = config.image {
            leftView = makeImageView(image: image)
        }
    }

    private func makeImageView(image: UIImage) -> UIView {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView()
        view.addSubview(imageView)
        view.widthAnchor.constraint(equalToConstant: 60).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return view
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
