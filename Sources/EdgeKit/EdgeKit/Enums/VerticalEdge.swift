//
//  VerticalEdge.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//


import UIKit

@MainActor
public enum VerticalEdge {
    case topEdge(of: UIView)
    case bottomEdge(of: UIView)
    case centerY(of: UIView)
    
    public var anchor: NSLayoutYAxisAnchor {
        switch self {
        case .topEdge(of: let view):     return view.topAnchor
        case .bottomEdge(of: let view):  return view.bottomAnchor
        case .centerY(of: let view):     return view.centerYAnchor
        }
    }
}
