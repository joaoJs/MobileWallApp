//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        guard let email = emailTextfield.text else {return}
        guard let pass = passwordTextfield.text else {return}
        
        Auth.auth().createUser(withEmail: email, password: pass) { authResult, error in
            if let e = error {
                print(e)
            } else {
                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
            }
        }
    }
    
}
