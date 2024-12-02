//
//  Omnidirectional.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 2.12.2024.
//  Copyright © 2024 Nazmi Yavuz. All rights reserved.
//

import UIKit

@MainActor
public protocol Omnidirectional {
    
    /// The center alignment of the related view according to the parent view
    /// - Parameters:
    ///   - inSafeArea: A boolean value for the view controller's root view, the layout guide accommodates the
    ///   status bar, other visible bars, and any additional insets that you specified using the
    ///   additionalSafeAreaInsets property of your view controller. For other views in the view hierarchy,
    ///   the layout guide reflects only the portion of the view that is covered by other content.
    ///   For example, if a view is entirely within the safe area of its superview,
    ///   the layout guide edges are equal to the edges of the view.
    ///   - padding: The constant offset for the constraint.
    ///   - relatedBy: The relation between the first attribute
    ///   and the modified second attribute in a constraint.
    ///   - priority: The layout priority is used to indicate to the
    ///   constraint-based layout system which constraints are more important,
    ///   allowing the system to make appropriate tradeoffs when satisfying
    ///   the constraints of the system as a whole.
    ///   - isActive: A boolean property to activate or deactivate the constraint
    /// - Returns: The relationship between two user interface objects that
    ///   must be satisfied by the constraint-based layout system.
    func centerInParent(
        inSafeArea: Bool,
        padding: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> [NSLayoutConstraint?]
    
    /// The center alignment of the related view according to the another one
    /// - Parameters:
    ///   - view: The first attribute in a constraint.
    ///   - padding: The constant offset for the constraint.
    ///   - relatedBy: The relation between the first attribute
    ///   and the modified second attribute in a constraint.
    ///   - priority: The layout priority is used to indicate to the
    ///   constraint-based layout system which constraints are more important,
    ///   allowing the system to make appropriate tradeoffs when satisfying
    ///   the constraints of the system as a whole.
    ///   - isActive: A boolean property to activate or deactivate the constraint
    /// - Returns: The relationship between two user interface objects that
    ///   must be satisfied by the constraint-based layout system.
    func center(
        to view: UIView,
        padding: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> [NSLayoutConstraint?]
}
