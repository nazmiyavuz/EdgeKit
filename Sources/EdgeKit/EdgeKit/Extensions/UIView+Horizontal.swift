//
//  UIView+Horizontal.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//

import UIKit

extension UIView: Horizontal {
    
    // MARK: - Horizontal Axis
    @discardableResult
    public func left(
        to view: HorizontalEdge,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        
        arrangeForAutoLayout()
        guard let anchor = getXAnchor(of: view, parentViewEdge: .leftEdge(of: nil)) else { return nil }
        let constraint = getXConstraint(padding: padding, with: .left, relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
    @discardableResult
    public func right(
        to view: HorizontalEdge,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        arrangeForAutoLayout()
        guard let anchor = getXAnchor(of: view, parentViewEdge: .rightEdge(of: nil)) else { return nil }
        let constraint = getXConstraint(padding: padding, with: .right, relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
    @discardableResult
    public func centerX(
        to view: HorizontalEdge,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint? {
        arrangeForAutoLayout()
        
        guard let anchor = getXAnchor(of: view, parentViewEdge: .centerX(of: nil)) else { return nil }
        let constraint = getXConstraint(padding: padding, with: .centerX, relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
}
