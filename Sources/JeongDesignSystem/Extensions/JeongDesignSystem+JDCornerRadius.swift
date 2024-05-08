//
//  UIView+JDCornerRadius.swift
//
//
//  Created by 유정주 on 5/8/24.
//

import UIKit

public extension JeongDesignSystem {
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: JDCornerRadius) -> Self {
        view.clipsToBounds = true
        view.layer.cornerRadius = cornerRadius.value
        return self
    }
}
