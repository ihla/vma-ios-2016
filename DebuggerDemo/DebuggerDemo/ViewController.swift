//
//  ViewController.swift
//  DebuggerDemo
//
//  Created by Lubos Ilcik on 05/12/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func action(_ sender: AnyObject) {
    }
    
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        count = 99
//        let objects = "red balloons"
//        print("\(count) \(objects)")

        //bug #1
//        let match = findElement(["java", "swift", "cpp"], match: { $0 == "" })
//        print(match)
        
        //bug #2
        let num: Int? = nil
        dispatch_onto_queue(DispatchQueue.global(qos: .background), a: num)
        
        //bug #3 (objc function)
//        let match = findStringElement(["java", "swift", "cpp"], "")
//        print(match)
        
        //bug #4
//        readPage()

    }

}

