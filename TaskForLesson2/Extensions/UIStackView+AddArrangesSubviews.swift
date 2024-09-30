//
//  UIStackView+AddArrangesSubviews.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 30.09.24.
//

import UIKit

extension UIStackView {
    
    func addArrangedSubviews(_ views: [UIView]) {
        
        views.forEach { addArrangedSubview($0)}
    }
}
