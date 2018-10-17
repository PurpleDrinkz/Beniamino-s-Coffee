//
//  ControllerLogin.swift
//  BeniaminosCoffee
//
//  Created by Alumno on 17/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var lblWarning: UILabel!
    
    @IBAction func btnSignIn(_ sender: Any) {
        
        if txtEmail.text != nil && txtEmail.text != "" && txtPassword.text != nil && txtPassword.text != ""{
            
            performSegue(withIdentifier: "goToApp", sender: self)
        }else{
            lblWarning.isHidden = false
        }
        
        
    }
}
