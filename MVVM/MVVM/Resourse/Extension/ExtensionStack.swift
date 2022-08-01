//
//  ExtensionStack.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import UIKit

extension UIStackView {
    convenience init(view: [UIView], axis: NSLayoutConstraint.Axis, spacing: Int) {
        self.init(arrangedSubviews: view)
        self.axis = axis
        self.spacing = CGFloat(spacing)
    }
}
