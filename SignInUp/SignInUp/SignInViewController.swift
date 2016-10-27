//
//  SignInViewController.swift
//  SignInUp
//
//  Created by Lubos Ilcik on 27/10/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func unwind(_ sender: UIStoryboardSegue) {
        
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        print("dismissKeyboard")
        view.endEditing(true)
    }
    
    @IBAction func signIn() {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSignUp" {
            if let vc = segue.destination as? SignUpViewController {
                
            }
        }
    }
}


extension SignInViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.tag == 0 {
            // email
            passwordTextField.becomeFirstResponder()
        } else if textField.tag == 1 {
            // paswword
            view.endEditing(true)
        }
        
        return true
    }
    
    
    
    
    
    
    
}








