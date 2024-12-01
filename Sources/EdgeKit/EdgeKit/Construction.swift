//
//  Construction.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//


import UIKit

public typealias AnchorRelation = NSLayoutConstraint.Relation

@MainActor
public protocol Construction {
    func left(
        toItem view: HorizontalEdge,
        padding: CGFloat,
        relatedBy: AnchorRelation,
        priority: UILayoutPriority,
        isActive: Bool
    ) -> NSLayoutConstraint
}
