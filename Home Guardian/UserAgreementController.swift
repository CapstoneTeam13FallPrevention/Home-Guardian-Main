//
//  UserAgreementController.swift
//  Home Guardian
//
//  Created by Timothy Dai on 2/19/19.
//  Copyright © 2019 Capstone. All rights reserved.
//

import UIKit

class UserAgreementController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func userAgreementPopUp(_ sender: Any) {
         let actionSheet = UIAlertController(title: "User Agreement", message: "Choose part to view", preferredStyle: . actionSheet)
         
         actionSheet.addAction(UIAlertAction(title: "Terms and Conditions", style: .default, handler: { (action:UIAlertAction) in
         
         }))
         
         actionSheet.addAction(UIAlertAction(title: "Privacy Policy", style: .default, handler: { (action:UIAlertAction) in

         }))
         
         actionSheet.addAction(UIAlertAction(title: "Disclaimer/Liability", style: .default, handler: { (action:UIAlertAction) in

         }))
         
         actionSheet.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
         
         self.present(actionSheet, animated: true, completion: nil)
    }
    
}
