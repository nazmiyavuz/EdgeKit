//
//  Anchorable.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 27.11.2024.
//

import UIKit

@MainActor
public protocol Anchorable {
    func arrangeForAutoLayout()
}

extension UIView: Anchorable {
    
    /// A Function to set the view’s autoresizing mask to false
    /// in order to determine whether the view’s autoresizing mask is translated
    /// into Auto Layout constraints.
    public func arrangeForAutoLayout() {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
}
