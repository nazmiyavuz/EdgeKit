//
//  Anchorable.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 27.11.2024.
//

import UIKit

public protocol Anchorable {
    var topEdge: NSLayoutYAxisAnchor { get }
    var leftEdge: NSLayoutXAxisAnchor { get }
    var bottomEdge: NSLayoutYAxisAnchor { get }
    var rightEdge: NSLayoutXAxisAnchor { get }
    
    var centerX: NSLayoutXAxisAnchor { get }
    var centerY: NSLayoutYAxisAnchor { get }
    
    var width: NSLayoutDimension { get }
    var height: NSLayoutDimension { get }

    func arrangeForAutoLayout()
}

extension UIView: Anchorable {
    
    public var topEdge: NSLayoutYAxisAnchor {
        return topAnchor
    }
    
    public var leftEdge: NSLayoutXAxisAnchor {
        return leftAnchor
    }
    
    public var bottomEdge: NSLayoutYAxisAnchor {
        return bottomAnchor
    }
    
    public var rightEdge: NSLayoutXAxisAnchor {
        return rightAnchor
    }
    
    public var centerX: NSLayoutXAxisAnchor {
        return centerXAnchor
    }
    
    public var centerY: NSLayoutYAxisAnchor {
        return centerYAnchor
    }
    
    public var width: NSLayoutDimension {
        return widthAnchor
    }
    
    public var height: NSLayoutDimension {
        return heightAnchor
    }
    
    public func arrangeForAutoLayout() {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
}
