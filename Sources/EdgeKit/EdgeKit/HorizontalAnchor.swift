//
//  HorizontalAnchor.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//


import UIKit

public enum HorizontalAnchor {
    
    case left(of: UIView)
    case leading(of: UIView)
    case trailing(of: UIView)
    case centerX(of: UIView)
    
    public var anchor: NSLayoutXAxisAnchor {
        switch self {
        case .left(of: let view): return view.leftAnchor
        case .leading(of: let view): return view.leadingAnchor
        case .trailing(of: let view): return view.trailingAnchor
        case .centerX(of: let view): return view.centerXAnchor
        }
    }
    
}