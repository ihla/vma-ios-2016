//
//  SignOutViewController.swift
//  SignIn+UserDefaults
//
//  Created by Lubos Ilcik on 24/11/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit

class SignOutViewController: UIViewController {
    
    var isPresented = false

    @IBAction func signOut(_ sender: Any) {
        
        print("signIn=\(StateStore().isSignedIn)")
        
        var store = StateStore()
        store.isSignedIn = false
        
        
        if isPresented {
            dismiss(animated: true, completion: nil)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let signInVC = storyboard.instantiateViewController(withIdentifier: "SignInViewController")
            present(signInVC, animated: true, completion: nil)
        }
        
    }

}
