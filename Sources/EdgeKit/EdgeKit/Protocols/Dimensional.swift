//
//  Dimensional.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 2.12.2024.
//  Copyright © 2024 Nazmi Yavuz. All rights reserved.
//

import UIKit

@MainActor
public protocol Dimensional {
    
    /// A function to set the width of the related UIView
    /// - Parameters:
    ///   - width: A constant representing the size of the attribute associated with this dimension anchor.
    ///   - relatedBy: The relation between the first attribute
    ///   and the modified second attribute in a constraint.
    ///   - priority: The layout priority is used to indicate to the
    ///   constraint-based layout system which constraints are more important,
    ///   allowing the system to make appropriate tradeoffs when satisfying
    ///   the constraints of the system as a whole.
    ///   - isActive: A boolean property to activate or deactivate the constraint
    /// - Returns: ``UIKit/NSLayoutConstraint``
    func width(
        _ width: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint?
    
    /// A function to set the height of the related UIView
    /// - Parameters:
    ///   - height: A constant representing the size of the attribute associated with this dimension anchor.
    ///   - relatedBy: The relation between the first attribute
    ///   and the modified second attribute in a constraint.
    ///   - priority: The layout priority is used to indicate to the
    ///   constraint-based layout system which constraints are more important,
    ///   allowing the system to make appropriate tradeoffs when satisfying
    ///   the constraints of the system as a whole.
    ///   - isActive: A boolean property to activate or deactivate the constraint
    func height(
        _ height: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint?
}
