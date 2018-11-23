//
//  HomeVC.swift
//  Projeto SAP
//
//  Created by Lucas Bitar on 13/11/18.
//  Copyright © 2018 Lucas Bitar. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var btnControleDeFrota: DesignableButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //provisorio
        let color1 = UIColor(red: CGFloat(235.0/255.0), green: CGFloat(235.0/255.0), blue: CGFloat(235.0/255.0), alpha: CGFloat(1.0))
        let color2 = UIColor(red: CGFloat(255.0/255.0), green: CGFloat(255.0/255.0), blue: CGFloat(255.0/255.0), alpha: CGFloat(1.0))

        //UIColor(red: CGFloat(235.0/255.0), green: CGFloat(88.0/255.0), blue: CGFloat(66.0/255.0), alpha: CGFloat(1.0))
    
        view.setGradientBackground(firstColor: color1, secondColor: color2)
        
    }
    
    
}
