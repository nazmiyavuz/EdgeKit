//
//  UIView+Construction.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//

import UIKit

extension UIView: Construction {
    
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
        let constraint = getXConstraint(of: view, padding: padding, with: .left, relatedBy: relatedBy, anchor: anchor)
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
        let constraint = getXConstraint(of: view, padding: padding, with: .right, relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
        }
        
        return constraint.setPriority(to: priority).activate(isActive)
    }
    
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
        let constraint = getYConstraint(of: view, padding: padding, with: .top, relatedBy: relatedBy, anchor: anchor)
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
        
        var constraint: NSLayoutConstraint {
            switch relatedBy {
            case .equal:
                return bottomAnchor.constraint(equalTo: anchor, constant: -padding)
                
            case .greaterThanOrEqual:
                return bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: -padding)
                
            case .lessThanOrEqual:
                return bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: -padding)
                
            @unknown default:
                return bottomAnchor.constraint(equalTo: anchor, constant: -padding)
            }
        }
        
        return constraint.setPriority(to: priority).activate(isActive)
    }
    
    // MARK: - Private Functions
    private func getXAnchor(of view: HorizontalEdge, parentViewEdge: HorizontalEdge) -> NSLayoutXAxisAnchor? {
        if let anchor = view.anchor {
            return anchor
        } else {
            return view.setParentAnchor(of: self.superview, edge: parentViewEdge)
        }
    }
    
    private func getYAnchor(of view: VerticalEdge, parentViewEdge: VerticalEdge) -> NSLayoutYAxisAnchor? {
        if let anchor = view.anchor {
            return anchor
        } else {
            return view.setParentAnchor(of: self.superview, edge: parentViewEdge)
        }
    }
}
    
    

