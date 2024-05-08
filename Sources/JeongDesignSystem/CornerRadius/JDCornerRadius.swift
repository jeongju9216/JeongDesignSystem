//
//  JDCornerRadius.swift
//
//
//  Created by 유정주 on 5/8/24.
//

import Foundation

public enum JDCornerRadius {
    
    case small
    case medium
    case large
}

public extension JDCornerRadius {
    
    var value: CGFloat {
        switch self {
        case .small:  5
        case .medium: 10
        case .large:  20
        }
    }
}
