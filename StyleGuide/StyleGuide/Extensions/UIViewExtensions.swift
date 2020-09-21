//
//  UIViewExtensions.swift
//  StyleGuide
//
//  Created by Ashish Jindal on 10/8/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import UIKit

public extension UIView {
    @objc var autolayout: Bool {
        get {
            return !translatesAutoresizingMaskIntoConstraints
        }
        
        set(newValue) {
            translatesAutoresizingMaskIntoConstraints = !newValue
        }
    }
    
    @discardableResult
    @objc func withAutoLayout() -> Self {
        autolayout = true
        return self
    }
    
    @objc func constraintsToFillSuperviewHorizontally(margins: CGFloat = 0) -> [NSLayoutConstraint] {
        return constraintsToFillSuperviewHorizontally(leadingMargin: margins, trailingMargin: -margins)
    }
    
    @objc func constraintsToFillSuperviewVertically(margins: CGFloat = 0) -> [NSLayoutConstraint] {
        return constraintsToFillSuperviewVertically(topMargin: margins, bottomMargin: -margins)
    }
    
    @objc func constraintsToFillSuperviewVertically(topMargin: CGFloat, bottomMargin: CGFloat) -> [NSLayoutConstraint] {
        guard let superview = superview else {
            fatalError("This view does not have a superview: \(self)")
        }
        let top = topAnchor.constraint(equalTo: superview.topAnchor, constant: topMargin)
        let bottom = bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: bottomMargin)
        return [top, bottom]
    }
    
    @objc func constraintsToFillSuperviewHorizontally(leadingMargin: CGFloat, trailingMargin: CGFloat) -> [NSLayoutConstraint] {
        guard let superview = superview else {
            fatalError("This view does not have a superview: \(self)")
        }
        let leader = leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: leadingMargin)
        let trailer = trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: trailingMargin)
        return [leader, trailer]
    }
}
