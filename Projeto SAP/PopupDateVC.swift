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

    var formattedDate : String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
         return formatter.string(from: datePicker.date)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDateOnInit()
        datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: UIControl.Event.valueChanged)
//        let tapGesture = UITapGestureRecognizer(target:       self, action: #selector(viewTapped(tapRecognizer:)))
//
//        view.addGestureRecognizer(tapGesture)
    }
    
    func setDateOnInit(){
        lbDate.text = formattedDate
    }
    
    @objc func datePickerValueChanged(datePicker : UIDatePicker){
        lbDate.text = formattedDate
    }
    
//    @objc func viewTapped(tapRecognizer : UITapGestureRecognizer) {
//        view.endEditing(true)
//
//    }
//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? CadastroDeGuiaVC{
            vc.date = formattedDate
        }
    }
    
    @IBAction func saveTheDate(_ sender: DesignableButton) {
        print(lbDate.text!)
        performSegue(withIdentifier: "CadastroDeGuiaVC", sender: sender)
    }
    
    @IBAction func closeWithoutSave(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
