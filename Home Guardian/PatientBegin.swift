//
//  PatientBegin.swift
//  Home Guardian
//
//  Created by Timothy Dai on 1/22/19.
//  Copyright © 2019 Capstone. All rights reserved.
//

import UIKit

class PatientBegin: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var clinicTextBox: UITextField!
    @IBOutlet weak var clinicDropDown: UIPickerView!
    
    //Clinic List
    var clinicList = ["Mercy","Sparks"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return clinicList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        self.view.endEditing(true)
        return clinicList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.clinicTextBox.text = self.clinicList[row]
        self.clinicDropDown.isHidden = true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if textField == self.clinicTextBox {
            self.clinicDropDown.isHidden = false
            //if you don't want the users to se the keyboard type:
            
            textField.endEditing(true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
