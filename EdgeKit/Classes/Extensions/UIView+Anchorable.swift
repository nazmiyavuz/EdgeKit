//
//  UIView+Anchorable.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 6.12.2024.
//

import UIKit

extension UIView: Anchorable {
    
    /// A Function to set the view’s autoresizing mask to false
    /// in order to determine whether the view’s autoresizing mask is translated
    /// into Auto Layout constraints.
    public func arrangeForAutoLayout() {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    /// A Function to remove all constraints of subviews of the related UIView (parent view)
    public func removeAllConstraints() {
        for view in self.subviews {
            view.removeConstraints(view.constraints)
            view.removeFromSuperview()
        }
    }
    
}
