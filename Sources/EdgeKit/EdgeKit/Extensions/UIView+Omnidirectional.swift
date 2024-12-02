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
        inSafeArea: Bool = true,
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
    
}

