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
    @IBOutlet weak var tfRole: UITextField!
    let pickerView = UIPickerView()
    
    private let roles = ["Cobrador","Motorista"]
    
    var funcionario : Funcionario!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tfRole.inputView = pickerView
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
        return roles[row]
        }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tfRole.text = roles[row]
        self.view.endEditing(true)
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func AddFuncionario(_ sender: UIButton) {
        if funcionario == nil {
            funcionario = Funcionario(context: managedObjectContext)
        }
        
       
        funcionario.name = tfName?.text
        funcionario.id = Int16((tfID?.text)!)!
        funcionario.role = tfRole?.text
        
        do {
            try managedObjectContext.save()
        } catch {
            print(error.localizedDescription)
        }
        navigationController?.popViewController(animated: true)
    }
}
