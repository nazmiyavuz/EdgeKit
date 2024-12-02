//
//  UIView+Vertical.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 2.12.2024.
//  Copyright © 2024 Nazmi Yavuz. All rights reserved.
//

import UIKit

extension UIView: Vertical {
    
    // MARK: - Vertical Axis
    @discardableResult
    public func top(
        to view: VerticalEdge,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        arrangeForAutoLayout()
        guard let anchor = getYAnchor(of: view, parentViewEdge: .topEdge(of: nil)) else { return nil }
        let constraint = getYConstraint(padding: padding, with: .top, relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
    @discardableResult
    public func bottom(
        to view: VerticalEdge,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        arrangeForAutoLayout()
        guard let anchor = getYAnchor(of: view, parentViewEdge: .bottomEdge(of: nil)) else { return nil }
        let constraint = getYConstraint(padding: padding, with: .bottom, relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
    @discardableResult
    public func centerY(
        to view: VerticalEdge,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        guard let anchor = getYAnchor(of: view, parentViewEdge: .centerY(of: nil)) else { return nil }
        let constraint = getYConstraint(padding: padding, with: .centerY, relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
}
