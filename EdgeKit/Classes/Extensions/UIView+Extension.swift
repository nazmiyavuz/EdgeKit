//
//  UIView+Extension.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 27.11.2024.
//

import UIKit

public extension UIView {

    
    func removeAllConstraints() {
        for view in self.subviews {
            view.removeConstraints(view.constraints)
            view.removeFromSuperview()
        }
    }
    
}
