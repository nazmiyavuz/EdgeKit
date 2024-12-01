//
//  NSLayoutConstraint+Extension.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 28.11.2024.
//

import UIKit

public extension NSLayoutConstraint {
    
    /// A Function to set the UILayoutPriority
    /// - Parameter value: new UILayoutPriority
    /// - Returns: ``UIKit/NSLayoutConstraint``
    func setPriority(to value: UILayoutPriority) -> Self {
        priority = value
        return self
    }
    
    /// A Function to change the active state of the constraint.
    /// - Parameter value: The new active state of the constraint.
    /// - Returns: ``UIKit/NSLayoutConstraint``
    func activate(_ value: Bool) -> Self {
        isActive = value
        return self
    }
    
}
