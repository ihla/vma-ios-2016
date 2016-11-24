//
//  ViewController.swift
//  5stars-starter
//
//  Created by Lubos Ilcik on 03/11/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // zapísať do databázy
        let object = PFObject(className: "TestObj")
        object["foo"] = "test"
        object.saveInBackground { success, error in
            if success {
                print("saved with success")
            }
        }
        
        // čítanie
        let query = PFQuery(className: "TestObj")
        query.findObjectsInBackground { objects, error in
            guard let objects = objects else { return }
            for (index, object) in objects.enumerated() {
                print("TestObj[\(index)].foo=\(object["foo"]), created=\(object.createdAt)")
            }
            
        }
        
        
    }
    
}

