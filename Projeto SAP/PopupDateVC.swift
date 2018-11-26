//
//  PopupDateVC.swift
//  Projeto SAP
//
//  Created by Lucas Bitar on 26/11/18.
//  Copyright © 2018 Lucas Bitar. All rights reserved.
//

import UIKit

class PopupDateVC: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var btnSave: DesignableButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTheDate(_ sender: DesignableButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
