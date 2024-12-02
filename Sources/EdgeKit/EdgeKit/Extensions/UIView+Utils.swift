//
//  UIView+Utils.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 2.12.2024.
//  Copyright © 2024 Nazmi Yavuz. All rights reserved.
//

import UIKit

// MARK: - Private Functions
extension UIView {
    
    private func getEdgeAnchor<T>(with layout: LayoutGuide) -> T? {
        switch layout {
        case .top:      return topAnchor as? T
        case .left:     return leftAnchor as? T
        case .leading:  return leadingAnchor as? T
        case .bottom:   return bottomAnchor as? T
        case .right:    return rightAnchor as? T
        case .trailing: return trailingAnchor as? T
        case .centerX:  return centerXAnchor as? T
        case .centerY:  return centerYAnchor as? T
        case .width:    return widthAnchor as? T
        case .height:   return heightAnchor as? T
        }
    }
    
    func getXAnchor(of view: HorizontalEdge, parentViewEdge: HorizontalEdge) -> NSLayoutXAxisAnchor? {
        if let anchor = view.anchor {
            return anchor
        } else {
            return view.setParentAnchor(of: self.superview, edge: parentViewEdge)
        }
    }
    
    func getXConstraint(
        padding: CGFloat,
        with layout: LayoutGuide,
        relatedBy: AnchorRelation,
        anchor: NSLayoutXAxisAnchor
    ) -> NSLayoutConstraint? {
        let edge: NSLayoutXAxisAnchor? = getEdgeAnchor(with: layout)
        
        switch relatedBy {
        case .equal:
            return edge?.constraint(equalTo: anchor, constant: layout.constant(padding))
            
        case .greaterThanOrEqual:
            return edge?.constraint(greaterThanOrEqualTo: anchor, constant: layout.constant(padding))
            
        case .lessThanOrEqual:
            return edge?.constraint(lessThanOrEqualTo: anchor, constant: layout.constant(padding))
            
        @unknown default:
            return edge?.constraint(equalTo: anchor, constant: layout.constant(padding))
        }
    }
    
    func getYAnchor(of view: VerticalEdge, parentViewEdge: VerticalEdge) -> NSLayoutYAxisAnchor? {
        if let anchor = view.anchor {
            return anchor
        } else {
            return view.setParentAnchor(of: self.superview, edge: parentViewEdge)
        }
    }
    
    func getYConstraint(
        padding: CGFloat,
        with layout: LayoutGuide,
        relatedBy: AnchorRelation,
        anchor: NSLayoutYAxisAnchor
    ) -> NSLayoutConstraint? {
        let edge: NSLayoutYAxisAnchor? = getEdgeAnchor(with: layout)
        
        switch relatedBy {
        case .equal:
            return edge?.constraint(equalTo: anchor, constant: layout.constant(padding))
            
        case .greaterThanOrEqual:
            return edge?.constraint(greaterThanOrEqualTo: anchor, constant: layout.constant(padding))
            
        case .lessThanOrEqual:
            return edge?.constraint(lessThanOrEqualTo: anchor, constant: layout.constant(padding))
            
        @unknown default:
            return edge?.constraint(equalTo: anchor, constant: layout.constant(padding))
        }
    }
    
    func getDimensionalConstraint(
        _ width: CGFloat,
        with layout: LayoutGuide,
        relatedBy: AnchorRelation
    ) -> NSLayoutConstraint? {
        let dimension: NSLayoutDimension? = getEdgeAnchor(with: layout)
        
        switch relatedBy {
        case .equal:
            return dimension?.constraint(equalToConstant: layout.constant(width))
            
        case .greaterThanOrEqual:
            return dimension?.constraint(greaterThanOrEqualToConstant: layout.constant(width))
            
        case .lessThanOrEqual:
            return dimension?.constraint(lessThanOrEqualToConstant: layout.constant(width))
            
        @unknown default:
            return dimension?.constraint(equalToConstant: layout.constant(width))
        }
    }
    
}

