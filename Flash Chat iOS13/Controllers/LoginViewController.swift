//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        guard let email = emailTextfield.text else {return}
        guard let pass = passwordTextfield.text else {return}
        Auth.auth().signIn(withEmail: email, password: pass) { [weak self] authResult, error in
            if let e = error {
                print(e)
            } else {
                //print(authResult)
                guard let strongSelf = self else {return}
                strongSelf.performSegue(withIdentifier: "LoginToChat", sender: strongSelf)
            }
            
        }
    }
    
}
