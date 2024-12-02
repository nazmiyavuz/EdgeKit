//
//  UIView+Construction.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//

import UIKit

extension UIView: Construction {
    
    private func getXAnchor(of view: HorizontalEdge) -> NSLayoutXAxisAnchor? {
        if let anchor = view.anchor {
            return anchor
        } else {
            return view.setParentAnchor(of: self.superview, edge: .leftEdge(of: nil))
        }
    }
    
    @discardableResult
    public func left(
        to view: HorizontalEdge,
        padding: CGFloat = 0,
        relatedBy: AnchorRelation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint {
        arrangeForAutoLayout()
        
        var constraint: NSLayoutConstraint {
            switch relatedBy {
            case .equal:
                return leftAnchor.constraint(equalTo: view.anchor, constant: padding)
                
            case .greaterThanOrEqual:
                return leftAnchor.constraint(greaterThanOrEqualTo: view.anchor, constant: padding)
                
            case .lessThanOrEqual:
                return leftAnchor.constraint(lessThanOrEqualTo: view.anchor, constant: padding)
                
            @unknown default:
                return leftAnchor.constraint(equalTo: view.anchor, constant: padding)
            }
        }
        
        return constraint.setPriority(to: priority).activate(isActive)
    }
    
}
    
    
