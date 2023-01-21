//
//  UIViewExtension.swift
//  Movie_App
//
//  Created by Ertugrul Berber on 21.01.2023.
//

import Foundation
import UIKit

extension UIView {
    func round(_ radius: CGFloat = 10) {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
    func addborder(color: UIColor, width: CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
