//
//  UIView+Omnidirectional.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 2.12.2024.
//  Copyright © 2024 Nazmi Yavuz. All rights reserved.
//

import UIKit

extension UIView: Omnidirectional {
    
    @discardableResult
    public func centerInParent(
        inSafeArea: Bool = false,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> [NSLayoutConstraint?] {
        let centerXConstraint = centerX(to: .parentView(inSafeArea: inSafeArea), padding: padding,
                                        relatedBy: relatedBy, priority: priority, isActive: isActive)
        
        let centerYConstraint = centerY(to: .parentView(inSafeArea: inSafeArea), padding: padding,
                                        relatedBy: relatedBy, priority: priority, isActive: isActive)
        return [centerXConstraint, centerYConstraint]
    }
    
    @discardableResult
    public func center(
        to view: UIView,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> [NSLayoutConstraint?] {
        let centerXConstraint = centerX(to: .centerX(of: view), padding: padding,
                                        relatedBy: relatedBy, priority: priority, isActive: isActive)
        let centerYConstraint = centerY(to: .centerY(of: view), padding: padding,
                                        relatedBy: relatedBy, priority: priority, isActive: isActive)
        return [centerXConstraint, centerYConstraint]
    }
    
    @discardableResult
    public func fillParentView(
        excluding edges: [FourEdges] = [],
        inSafeArea: Bool = false,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> [NSLayoutConstraint?] {
        var constraintList: [NSLayoutConstraint?] = []
        
        if !edges.contains(.left) {
            let left = left(to: .parentView(inSafeArea: inSafeArea), padding: padding, relatedBy: relatedBy,
                 priority: priority, isActive: isActive)
            constraintList.append(left)
        }
        
        if !edges.contains(.right) {
            let right = right(to: .parentView(inSafeArea: inSafeArea), padding: padding, relatedBy: relatedBy,
                              priority: priority, isActive: isActive)
            constraintList.append(right)
        }
        
        if !edges.contains(.top) {
            let top = top(to: .parentView(inSafeArea: inSafeArea), padding: padding, relatedBy: relatedBy,
                          priority: priority, isActive: isActive)
            constraintList.append(top)
        }
        
        if !edges.contains(.bottom) {
            let bottom = bottom(to: .parentView(inSafeArea: inSafeArea), padding: padding, relatedBy: relatedBy,
                                priority: priority, isActive: isActive)
            constraintList.append(bottom)
        }
        
        return constraintList
        
    }
    
    @discardableResult
    public func anchor(
        leftAnchor: HorizontalEdge? = nil,
        topAnchor: VerticalEdge? = nil,
        rightAnchor: HorizontalEdge? = nil,
        bottomAnchor: VerticalEdge? = nil,
        leftPadding: CGFloat = 0,
        topPadding: CGFloat = 0,
        rightPadding: CGFloat = 0,
        bottomPadding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> [NSLayoutConstraint?] {
        var constraints: [NSLayoutConstraint?] = []
        if let leftAnchor {
            let leftConstraint = left(to: leftAnchor, padding: leftPadding, relatedBy: relatedBy,
                                      priority: priority, isActive: isActive)
            constraints.append(leftConstraint)
        }
        
        if let topAnchor {
            let topConstraint = top(to: topAnchor, padding: topPadding, relatedBy: relatedBy,
                                    priority: priority, isActive: isActive)
            constraints.append(topConstraint)
        }
        
        if let rightAnchor {
            let rightConstraint = right(to: rightAnchor, padding: rightPadding, relatedBy: relatedBy,
                                        priority: priority, isActive: isActive)
            constraints.append(rightConstraint)
        }
        
        if let bottomAnchor {
            let bottomConstraint = bottom(to: bottomAnchor, padding: bottomPadding, relatedBy: relatedBy,
                                          priority: priority, isActive: isActive)
            constraints.append(bottomConstraint)
        }
        return constraints
    }
    
}

