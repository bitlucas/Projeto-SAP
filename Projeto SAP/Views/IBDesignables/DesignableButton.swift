//
//  DesignableButton.swift
//  Projeto SAP
//
//  Created by Lucas Bitar on 14/11/18.
//  Copyright © 2018 Lucas Bitar. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {
    
    @IBInspectable var roundedCorner : CGFloat = 0 {
        didSet{
                self.layer.cornerRadius = roundedCorner
        }
    }
    @IBInspectable var borderStyle : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderStyle
        }
    }
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
}

