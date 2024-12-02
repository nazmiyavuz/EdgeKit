//
//  VerticalEdge.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//


import UIKit

@MainActor
public enum VerticalEdge {
    
    case parentView(inSafeArea: Bool)
    case topEdge(of: UIView?)
    case bottomEdge(of: UIView?)
    case centerY(of: UIView?)
    
    public var anchor: NSLayoutYAxisAnchor? {
        switch self {
        case .topEdge(of: let view):     return view?.topAnchor
        case .bottomEdge(of: let view):  return view?.bottomAnchor
        case .centerY(of: let view):     return view?.centerYAnchor
        case .parentView:                return nil
        }
    }
    
    func setParentAnchor(of view: UIView?, edge: Self) -> NSLayoutYAxisAnchor? {
        switch self {
        case .parentView(inSafeArea: let inSafe):
            return getParentViewAnchor(for: view, inSafeArea: inSafe, edge: edge)
            
        case .topEdge, .bottomEdge, .centerY:
            return nil
        }
    }
    
    // MARK: - Private Functions
    private func getParentView(of view: UIView?) -> UIView? {
        guard let superview = view else {
            assertionFailure("There is not any superview of this view.")
            return nil
        }
        return superview
    }
    
    private func getParentViewAnchor(for view: UIView?, inSafeArea: Bool, edge: Self) -> NSLayoutYAxisAnchor? {
        guard let parentView = getParentView(of: view) else {
            return nil
        }
        
        switch edge {
        case .parentView:
            return nil
            
        case .topEdge:
            return inSafeArea ? parentView.safeAreaLayoutGuide.topAnchor : parentView.topAnchor
            
        case .bottomEdge:
            return inSafeArea ? parentView.safeAreaLayoutGuide.bottomAnchor : parentView.bottomAnchor
            
        case .centerY:
            return inSafeArea ? parentView.safeAreaLayoutGuide.centerYAnchor : parentView.centerYAnchor
        }
    }
}
