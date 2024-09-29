//
//  CustomButton.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 28.09.24.
//

import UIKit

class CustomButton: UIButton {
    
    private let button = UIButton()
    
    init(title: String, backgroundColor: UIColor, isShadow: Bool) {
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
    
    private func setupButton(title: String, 
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
        
        addSubview(button)
    }
    
    private func setupLayout() {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
