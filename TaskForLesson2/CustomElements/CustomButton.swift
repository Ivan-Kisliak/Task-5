//
//  CustomButton.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 28.09.24.
//

import UIKit

class CustomButton: UIButton {
    
    init(title: String, backgroundColor: UIColor, isShadow: Bool = false) {
        super.init(frame: .zero)
        
        setupButton(title: title, backgroundColor: backgroundColor, isShadow: isShadow)
        setupLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
}

//MARK: - Setup View

private extension CustomButton {
    
    func setupButton(title: String,
                             backgroundColor: UIColor,
                             isShadow: Bool) {
        setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        layer.cornerRadius = 10
        
        if isShadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOpacity = 0.7
            layer.shadowOffset = CGSize(width: 5, height: 5)
            layer.shadowRadius = 10
        }
        

    }
}

//MARK: - Setup Layout

private extension CustomButton {
    
    func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: topAnchor),
            bottomAnchor.constraint(equalTo: bottomAnchor),
            leadingAnchor.constraint(equalTo: leadingAnchor),
            trailingAnchor.constraint(equalTo: trailingAnchor),
            heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
