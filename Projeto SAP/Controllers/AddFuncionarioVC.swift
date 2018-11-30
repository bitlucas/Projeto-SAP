//
//  AddFuncionarioVC.swift
//  Projeto SAP
//
//  Created by Lucas Bitar on 30/11/18.
//  Copyright © 2018 Lucas Bitar. All rights reserved.
//

import UIKit

class AddFuncionarioVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var tfRole: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let roles = ["Cobrador","Motorista"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return roles.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        tfRole.text = roles[row]
        return roles[row]
        
    }

    

}
