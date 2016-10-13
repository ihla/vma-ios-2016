//
//  KeypadViewController.swift
//  HomeAlarm
//
//  Created by Lubos Ilcik on 06/10/16.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit

class KeypadViewController: UIViewController {
    
    @IBOutlet weak var codeDisplayLabel: UILabel!
    
    private var isTypingCode = false
    
    @IBAction func addDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("addDigit: \(digit)")
        if isTypingCode {
            codeDisplayLabel.text! += digit
        } else {
            codeDisplayLabel.text! = digit
            isTypingCode = true
        }
    }

    
    
    
    
    
    
}
