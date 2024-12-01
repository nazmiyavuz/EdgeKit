//
//  HorizontalEdge.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//


import UIKit

@MainActor
public enum HorizontalEdge {
    
    case leftEdge(of: UIView)
    case leadingEdge(of: UIView)
    case trailingEdge(of: UIView)
    case centerX(of: UIView)
    
    public var anchor: NSLayoutXAxisAnchor {
        switch self {
        case .leftEdge(of: let view):     return view.leftAnchor
        case .leadingEdge(of: let view):  return view.leadingAnchor
        case .trailingEdge(of: let view): return view.trailingAnchor
        case .centerX(of: let view):      return view.centerXAnchor
        }
    }
    
}
