//
//  UIView+Construction.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//

import UIKit

extension UIView: Construction {
    
    @discardableResult
    public func left(
        toItem view: HorizontalEdge,
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
    
    

