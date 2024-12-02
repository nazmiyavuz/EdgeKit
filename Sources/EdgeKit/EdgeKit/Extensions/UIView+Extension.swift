//
//  UIView+Extension.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 27.11.2024.
//

import UIKit

public extension UIView {

    func anchor(top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                paddingTop: CGFloat = 0,
                paddingLeft: CGFloat = 0,
                paddingBottom: CGFloat = 0,
                paddingRight: CGFloat = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil,
                isActive: Bool = true) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = isActive
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = isActive
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = isActive
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = isActive
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = isActive
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = isActive
        }
    }
    
    func setDimensions(height: CGFloat, width: CGFloat, isActive: Bool = true) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = isActive
        widthAnchor.constraint(equalToConstant: width).isActive = isActive
    }
    
    func fillSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        guard let view = superview else { return }
        anchor(top: view.topAnchor, left: view.leftAnchor,
               bottom: view.bottomAnchor, right: view.rightAnchor)
    }
    
    func fillSuperViewSafeArea(padding: CGFloat = 0, isActive: Bool = true) {
        translatesAutoresizingMaskIntoConstraints = false
        guard let view = superview else { return }
        anchor(top: view.safeAreaLayoutGuide.topAnchor,
               left: view.safeAreaLayoutGuide.leftAnchor,
               bottom: view.safeAreaLayoutGuide.bottomAnchor,
               right: view.safeAreaLayoutGuide.rightAnchor,
               paddingTop: padding, paddingLeft: padding,
               paddingBottom: padding, paddingRight: padding,
               isActive: isActive)
    }
    
    func removeAllConstraints() {
        for view in self.subviews {
            view.removeConstraints(view.constraints)
            view.removeFromSuperview()
        }
    }
    
    // MARK: Animation
    // i have created this in order to execute animation for related view
    func setAnimation(scaleXY sxy: CGFloat, duration: TimeInterval) {
        // animation of zooming / popping
        UIView.animate(withDuration: duration) {
            // scale by 30% -> 1.3
            self.transform = CGAffineTransform(scaleX: sxy, y: sxy)
        } completion: { (completed) in
            // return the initial state
            UIView.animate(withDuration: duration) {
                self.transform = CGAffineTransform.identity
            }
        }
    }
    
}
