//
//  Anchorable.swift
//  EdgeKit
//
//  Created by Nazmi Yavuz on 27.11.2024.
//

import UIKit

@MainActor
public protocol Anchorable {
    
    /// A Function to set the view’s autoresizing mask to false
    /// in order to determine whether the view’s autoresizing mask is translated
    /// into Auto Layout constraints.
    func arrangeForAutoLayout()
    
    /// A function to remove all constraints of subviews of the related UIView.
    func removeAllConstraints()
    
    /// Get and set the corner radius of the related UIView
    ///
    /// The radius to use when drawing rounded corners for the layer’s background.
    ///
    /// Setting the radius to a value greater than 0.0 causes the layer to begin drawing
    /// rounded corners on its background. By default, the corner radius does not apply to
    /// the image in the layer’s contents property; it applies only to the background color and border of the layer.
    /// However, setting the masksToBounds property to true causes the content to be clipped to the rounded corners.
    ///
    /// The default value of this property is 0.0.
    var cornerRadius: CGFloat { get set }
    
    /// Get and set the border width of the related UIView
    ///
    /// The width of the layer’s border.
    /// When this value is greater than 0.0, the layer draws a border using the current borderColor value.
    /// The border is drawn inset from the receiver’s bounds by the value specified in this property.
    /// It is composited above the receiver’s contents and sublayers
    /// and includes the effects of the cornerRadius property.
    /// The default value of this property is 0.0.
    var borderWidth: CGFloat { get set }
    
    /// The color of the layer’s border.
    ///
    /// The default value of this property is an opaque black color.
    ///
    /// The value of this property is retained using the Core Foundation retain/release semantics.
    /// This behavior occurs despite the fact that the property declaration appears to use
    /// the default assign semantics for object retention.
    var borderColor: UIColor? { get set }
    
    /// The blur radius (in points) used to render the layer’s shadow.
    ///
    /// You specify the radius The default value of this property is 3.0.
    var shadowRadius: CGFloat { get set }
    
    /// The color of the layer’s shadow.
    ///
    /// The default value of this property is an opaque black color.
    ///
    /// The value of this property is retained using the Core Foundation retain/release semantics.
    /// This behavior occurs despite the fact that the property declaration appears to
    /// use the default assign semantics for object retention.
    var shadowColor: UIColor? { get set }
    
    /// The opacity of the layer’s shadow.
    ///
    /// The value in this property must be in the range 0.0 (transparent) to 1.0 (opaque).
    /// The default value of this property is 0.0.
    var shadowOpacity: Float { get set }
    
    /// The offset (in points) of the layer’s shadow.
    ///
    /// The default value of this property is (0.0, -3.0).
    var shadowOffset: CGSize { get set }
}
