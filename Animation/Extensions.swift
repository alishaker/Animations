//
//  Extensions.swift
//  Animation
//
//  Created by Ali Shaker on 24/11/2023.
//  Copyright © 2023 Admin. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func dropShadow() {
        self.layer.shadowColor = UIColor.label.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
        self.layer.shadowRadius = 5
    }
    
    func addCornerRadius() {
        self.layer.cornerRadius = 5
    }
}
