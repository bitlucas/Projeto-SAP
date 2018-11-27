//
//  PopupDateVC.swift
//  Projeto SAP
//
//  Created by Lucas Bitar on 26/11/18.
//  Copyright © 2018 Lucas Bitar. All rights reserved.
//

import UIKit

class PopupDateVC: UIViewController {

  
    @IBOutlet weak var btnSave: DesignableButton!
    @IBOutlet weak var lbDate : UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    var dateString : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: UIControl.Event.valueChanged)
    }
    @objc func datePickerValueChanged(datePicker : UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        dateString = dateFormatter.string(from: datePicker.date)
        lbDate.isHidden = false
        lbDate.text = dateString
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? CadastroDeGuiaVC{
            vc.date = dateString
        }
    }
    
    @IBAction func saveTheDate(_ sender: DesignableButton) {
        print(lbDate.text!)
        performSegue(withIdentifier: "CadastroDeGuiaVC", sender: sender)
    }
    
    
}
