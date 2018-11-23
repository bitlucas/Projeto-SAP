//
//  UIView + Extensions.swift
//  Projeto SAP
//
//  Created by Lucas Bitar on 21/11/18.
//  Copyright © 2018 Lucas Bitar. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setGradientBackground(firstColor : UIColor, secondColor : UIColor){
        
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = bounds
        gradientBackground.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientBackground.locations = [0.0, 1.0]
        gradientBackground.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientBackground.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        layer.insertSublayer(gradientBackground, at: 0)
        
    }
}
