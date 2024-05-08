//
//  UIView+JDCornerRadius.swift
//
//
//  Created by 유정주 on 5/8/24.
//

import UIKit

public extension UIView {
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: JDCornerRadius) -> Self {
        clipsToBounds = true
        layer.cornerRadius = cornerRadius.value
        return self
    }
}
