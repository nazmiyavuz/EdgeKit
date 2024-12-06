//
//  Anchorable.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 27.11.2024.
//

import UIKit

@MainActor
public protocol Anchorable {
    
    /// A Function to set the view’s autoresizing mask to false
    /// in order to determine whether the view’s autoresizing mask is translated
    /// into Auto Layout constraints.
    func arrangeForAutoLayout()
    
    /// A function to remove all constraints of subviews of the related UIView.
    func removeAllConstraints()
    
    /// Get and set the corner radius of the related UIView
    var cornerRadius: CGFloat { get set }
    
    /// Get and set the border width of the related UIView
    var borderWidth: CGFloat { get set }
}
