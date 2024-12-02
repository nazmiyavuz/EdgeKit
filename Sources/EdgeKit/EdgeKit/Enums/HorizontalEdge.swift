//
//  HorizontalEdge.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 1.12.2024.
//

import UIKit

@MainActor
public enum HorizontalEdge {
    
    case parentView(inSafeArea: Bool)
    case leftEdge(of: UIView?)
    case leadingEdge(of: UIView?)
    case rightEdge(of: UIView?)
    case trailingEdge(of: UIView?)
    case centerX(of: UIView?)
    
    var anchor: NSLayoutXAxisAnchor? {
        switch self {
        case .leftEdge(of: let view):     return view?.leftAnchor
        case .leadingEdge(of: let view):  return view?.leadingAnchor
        case .rightEdge(of: let view):    return view?.rightAnchor
        case .trailingEdge(of: let view): return view?.trailingAnchor
        case .centerX(of: let view):      return view?.centerXAnchor
        case .parentView:                 return nil
        }
    }
    
    func setParentAnchor(of view: UIView?, edge: Self) -> NSLayoutXAxisAnchor? {
        
        switch self {
        case .parentView(inSafeArea: let inSafe):
            return getParentViewAnchor(for: view, inSafeArea: inSafe, edge: edge)
            
        case .centerX, .leftEdge, .leadingEdge, .rightEdge, .trailingEdge:
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
    
    private func getParentViewAnchor(for view: UIView?, inSafeArea: Bool, edge: Self) -> NSLayoutXAxisAnchor? {
        
        guard let parentView = getParentView(of: view) else {
            return nil
        }
        
        switch edge {
    
        case .parentView:
            return nil
            
        case .leftEdge:
            return inSafeArea ? parentView.safeAreaLayoutGuide.leftAnchor : parentView.leftAnchor
            
        case .leadingEdge:
            return inSafeArea ? parentView.safeAreaLayoutGuide.leadingAnchor : parentView.leadingAnchor
            
        case .rightEdge:
            return inSafeArea ? parentView.safeAreaLayoutGuide.rightAnchor : parentView.rightAnchor
            
        case .trailingEdge:
            return inSafeArea ? parentView.safeAreaLayoutGuide.trailingAnchor : parentView.trailingAnchor
            
        case .centerX:
            return inSafeArea ? parentView.safeAreaLayoutGuide.centerXAnchor : parentView.centerXAnchor
       
        }
       
    }
    
}
