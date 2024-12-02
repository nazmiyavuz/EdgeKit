//
//  Vertical.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 2.12.2024.
//

import UIKit

@MainActor
public protocol Vertical {
    /// The top alignment of the related view according to the another one
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
    func top(
        to view: VerticalEdge,
        padding: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint?
    
    /// The bottom alignment of the related view according to the another one
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
    func bottom(
        to view: VerticalEdge,
        padding: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint?
    
    /// The center alignment in the vertical axis of the related view according to the another one
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
    func centerY(
        to view: VerticalEdge,
        padding: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint?
    
}
