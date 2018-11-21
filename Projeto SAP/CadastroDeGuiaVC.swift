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
    private var datePicker: UIDatePicker?
    private var pickerView : UIPickerView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showDatePicker()
        tfDate.setBottomBorder()
        tfTurn.setBottomBorder()
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(tapRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
    }
    
    func showPickerView(){
        pickerView = UIPickerView()
        tfTurn.inputView = pickerView
    }
    
    func showDatePicker() {
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfDate.inputView = datePicker
        datePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
    }
    
    @objc func viewTapped(tapRecognizer : UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker : UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        tfDate.text = dateFormatter.string(from: datePicker.date)
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

