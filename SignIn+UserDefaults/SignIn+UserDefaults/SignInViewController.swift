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

    @IBAction func unwind(sender: UIStoryboardSegue) { }

    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func signIn() {
        guard let email = emailTextField.text,
            let password = passwordTextField.text,
            !email.isEmpty, !password.isEmpty
        else { return }
        
        print("sign in with email=\(email), password=\(password)")
        view.endEditing(true)
        
        print("signIn=\(StateStore().isSignedIn)")
        
        var store = StateStore()
        store.isSignedIn = true
        
        transitToSignViewController()
    }

    private func transitToSignViewController() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signInVC = storyboard.instantiateViewController(withIdentifier: "SignOutViewController") as! SignOutViewController
        signInVC.isPresented = true
        present(signInVC, animated: true, completion: nil)
        
    }
    
}


extension SignInViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 0 {
            // email
            passwordTextField.becomeFirstResponder()
        } else if textField.tag == 1 {
            // password
            view.endEditing(true)
        }
        return true
    }
    
}
