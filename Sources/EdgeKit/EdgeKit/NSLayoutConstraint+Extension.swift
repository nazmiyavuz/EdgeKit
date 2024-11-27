//
//  NSLayoutConstraint+Extension.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 28.11.2024.
//

import UIKit

public extension NSLayoutConstraint {
    
    func setPriority(to newValue: UILayoutPriority) -> Self {
        priority = newValue
        return self
    }
    
    func activate() -> Self {
        isActive = true
        return self
    }
    
    func deactivate() -> Self {
        isActive = false
        return self
    }
    
}
