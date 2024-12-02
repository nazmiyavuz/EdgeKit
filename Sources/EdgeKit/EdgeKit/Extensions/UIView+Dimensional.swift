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
    public func width(
        _ width: CGFloat,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        arrangeForAutoLayout()
        let constraint = getDimensionalConstraint(width, with: .width, relatedBy: relatedBy)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
}
