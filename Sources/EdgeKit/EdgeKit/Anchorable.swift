//
//  Anchorable.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 27.11.2024.
//

import UIKit

public protocol Anchorable {
    func arrangeForAutoLayout()
}

extension UIView: Anchorable {
    
    public func arrangeForAutoLayout() {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
}
