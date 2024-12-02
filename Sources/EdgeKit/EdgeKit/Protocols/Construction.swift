//
//  Construction.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//


import UIKit

/// A new type to handle a clean code logic
public typealias AnchorRelation = NSLayoutConstraint.Relation

@MainActor
public protocol Construction {
    
    /// The left alignment of the related view according to the another one
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
    func left(
        to view: HorizontalEdge,
        padding: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint?
    
    /// The right alignment of the related view according to the another one
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
    func right(
        to view: HorizontalEdge,
        padding: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint?
}
