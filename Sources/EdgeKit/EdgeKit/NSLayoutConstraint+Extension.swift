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
    
    func activate(_ value: Bool) -> Self {
        isActive = value
        return self
    }
    
}
