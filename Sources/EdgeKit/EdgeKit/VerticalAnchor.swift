//
//  VerticalAnchor.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//


import UIKit

public enum VerticalAnchor {
    case top(of: UIView)
    case bottom(of: UIView)
    case centerY(of: UIView)
    
    public var anchor: NSLayoutYAxisAnchor {
        switch self {
        case .top(of: let view):     return view.topAnchor
        case .bottom(of: let view):  return view.bottomAnchor
        case .centerY(of: let view): return view.centerYAnchor
        }
    }
}