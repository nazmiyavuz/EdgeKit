//
//  LayoutGuide.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 2.12.2024.
//


import UIKit

enum LayoutGuide {
    case top
    case left
    case leading
    case bottom
    case right
    case trailing
    case centerX
    case centerY
    
    func getPadding(_ value: CGFloat) -> CGFloat {
        switch self {
        case .top, .left, .leading, .centerX, .centerY: return value
        case .bottom, .right, .trailing: return -value
        }
    }
}
