//
//  UIView+addSubviews.swift
//  TaskForLesson2
//
//  Created by  Ivan Kiskyak on 30.09.24.
//

import UIKit

extension UIView {
    
    func addSubViews(_ views: [UIView]) {
        views.forEach { addSubview($0) }
        
    }
}
