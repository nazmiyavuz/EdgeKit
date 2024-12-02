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
    
    /// The right alignment of the related view according to the another one
    /// - Parameters:
    ///   - width: A constant representing the size of the attribute associated with this dimension anchor.
    ///   - relatedBy: The relation between the first attribute
    ///   and the modified second attribute in a constraint.
    ///   - priority: The layout priority is used to indicate to the
    ///   constraint-based layout system which constraints are more important,
    ///   allowing the system to make appropriate tradeoffs when satisfying
    ///   the constraints of the system as a whole.
    ///   - isActive: A boolean property to activate or deactivate the constraint
    /// - Returns: The relationship between two user interface objects that
    ///   must be satisfied by the constraint-based layout system.
    func width(
        _ width: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint?
    
}
