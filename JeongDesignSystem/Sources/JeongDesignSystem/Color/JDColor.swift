//
//  File.swift
//  
//
//  Created by 유정주 on 4/29/24.
//

import UIKit

public enum JDColor {
    
    case primary
    case background
}


// MARK: - Color

public extension JDColor {
    
    static var color: UIColor {
        switch self {
        case .primary:
            UIColor(hex: "00b6d7")
        case .background:
            UIColor.systemBackground
        }
    }
}
