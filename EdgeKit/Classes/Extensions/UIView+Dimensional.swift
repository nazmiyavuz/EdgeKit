//
//  UIView+Dimensional.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 2.12.2024.
//  Copyright © 2024 Nazmi Yavuz. All rights reserved.
//

import UIKit

extension UIView: Dimensional {
    
    @discardableResult
    public func setWidth(
        _ width: CGFloat,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        arrangeForAutoLayout()
        let constraint = getDimensionalConstraint(width, with: .width, relatedBy: relatedBy)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
    @discardableResult
    public func setHeight(
        _ height: CGFloat,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        arrangeForAutoLayout()
        let constraint = getDimensionalConstraint(height, with: .height, relatedBy: relatedBy)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
    @discardableResult
    public func setSize(
        width: CGFloat,
        height: CGFloat,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> [NSLayoutConstraint?] {
        let widthConstraint = setWidth(width, relatedBy: relatedBy, priority: priority, isActive: isActive)
        let heightConstraint = setHeight(height, relatedBy: relatedBy, priority: priority, isActive: isActive)
        return [widthConstraint, heightConstraint]
    }
    
}
