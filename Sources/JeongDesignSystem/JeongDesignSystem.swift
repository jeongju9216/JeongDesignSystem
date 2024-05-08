//
//  JeongDesignSystem.swift
//
//
//  Created by 유정주 on 5/8/24.
//

import UIKit

public struct JeongDesignSystem {
    
    public let view: UIView
}

public protocol JeongDesignSystemCompatible: UIView {

    var jd: JeongDesignSystem { get }
}

public extension JeongDesignSystemCompatible {

    public var jd: JeongDesignSystem {
        JeongDesignSystem(view: self)
    }
}

extension UIView: JeongDesignSystemCompatible { }
