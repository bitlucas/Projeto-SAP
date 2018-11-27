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
        tfDate.setBottomBorder()
        tfTurn.setBottomBorder()
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(tapRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func viewTapped(tapRecognizer : UITapGestureRecognizer) {
        view.endEditing(true)
    }
    

    
    @IBAction func close(_ sender : UIButton!) {
        dismiss(animated: true, completion: nil)
    }
}

extension UITextField {
    func setBottomBorder() {
        let bg = UIColor(red: CGFloat(97.0/255.0), green: CGFloat(88.0/255.0), blue: CGFloat(172.0/255.0), alpha: CGFloat(1.0))
        self.borderStyle = .none
        self.layer.masksToBounds = false
        self.layer.backgroundColor = bg.cgColor
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}

