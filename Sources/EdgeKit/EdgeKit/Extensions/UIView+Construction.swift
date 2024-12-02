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
        let constraint = getXConstraint(of: view, padding: padding, with: .centerX,
                                        relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
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
        let constraint = getYConstraint(of: view, padding: padding, with: .bottom, relatedBy: relatedBy, anchor: anchor)
        return constraint?.setPriority(to: priority).activate(isActive)
    }
    
    
}
  
// MARK: - Private Functions
private extension UIView {
    
    func getEdgeAnchor<V, T>(of view: V, with layout: LayoutGuide) -> T? {
        switch layout {
        case .top:      return topAnchor as? T
        case .left:     return leftAnchor as? T
        case .leading:  return leadingAnchor as? T
        case .bottom:   return bottomAnchor as? T
        case .right:    return rightAnchor as? T
        case .trailing: return trailingAnchor as? T
        case .centerX:  return centerXAnchor as? T
        case .centerY:  return centerYAnchor as? T
        }
    }
    
    func getXAnchor(of view: HorizontalEdge, parentViewEdge: HorizontalEdge) -> NSLayoutXAxisAnchor? {
        if let anchor = view.anchor {
            return anchor
        } else {
            return view.setParentAnchor(of: self.superview, edge: parentViewEdge)
        }
    }
    
    func getXConstraint<V>(
        of view: V,
        padding: CGFloat,
        with layout: LayoutGuide,
        relatedBy: AnchorRelation,
        anchor: NSLayoutXAxisAnchor
    ) -> NSLayoutConstraint? {
        let edge: NSLayoutXAxisAnchor? = getEdgeAnchor(of: view, with: layout)
        
        switch relatedBy {
        case .equal:
            return edge?.constraint(equalTo: anchor, constant: layout.getPadding(padding))
            
        case .greaterThanOrEqual:
            return edge?.constraint(greaterThanOrEqualTo: anchor, constant: layout.getPadding(padding))
            
        case .lessThanOrEqual:
            return edge?.constraint(lessThanOrEqualTo: anchor, constant: layout.getPadding(padding))
            
        @unknown default:
            return edge?.constraint(equalTo: anchor, constant: layout.getPadding(padding))
        }
    }
    
    func getYAnchor(of view: VerticalEdge, parentViewEdge: VerticalEdge) -> NSLayoutYAxisAnchor? {
        if let anchor = view.anchor {
            return anchor
        } else {
            return view.setParentAnchor(of: self.superview, edge: parentViewEdge)
        }
    }
    
    func getYConstraint<V>(
        of view: V,
        padding: CGFloat,
        with layout: LayoutGuide,
        relatedBy: AnchorRelation,
        anchor: NSLayoutYAxisAnchor
    ) -> NSLayoutConstraint? {
        let edge: NSLayoutYAxisAnchor? = getEdgeAnchor(of: view, with: layout)
        
        switch relatedBy {
        case .equal:
            return edge?.constraint(equalTo: anchor, constant: layout.getPadding(padding))
            
        case .greaterThanOrEqual:
            return edge?.constraint(greaterThanOrEqualTo: anchor, constant: layout.getPadding(padding))
            
        case .lessThanOrEqual:
            return edge?.constraint(lessThanOrEqualTo: anchor, constant: layout.getPadding(padding))
            
        @unknown default:
            return edge?.constraint(equalTo: anchor, constant: layout.getPadding(padding))
        }
    }
    
}

