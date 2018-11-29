//
//  CadastroDeGuiaVC.swift
//  Projeto SAP
//
//  Created by Lucas Bitar on 16/11/18.
//  Copyright © 2018 Lucas Bitar. All rights reserved.
//

import UIKit

class CadastroDeGuiaVC: UIViewController {

    @IBOutlet weak var tfTurn: UITextField!
    @IBOutlet weak var tfDate: UITextField!
    var date : String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfDate.text = date
        //tfDate.setBottomBorder()
        //tfTurn.setBottomBorder()
        
    }
    

    
    @IBAction func close(_ sender : UIButton!) {
        let transition: CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.default)
        transition.type = CATransitionType.moveIn
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window!.layer.add(transition, forKey: nil)
        self.dismiss(animated: false, completion: nil)
        
        //dismiss(animated: true, completion: nil)
    }
}

extension UITextField {
    func setBottomBorder() {
        let bg = UIColor(red: CGFloat(255.0/255.0), green: CGFloat(255.0/255.0), blue: CGFloat(255.0/255.0), alpha: CGFloat(1.0))
        self.borderStyle = .none
        self.layer.masksToBounds = false
        self.layer.backgroundColor = bg.cgColor
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}

