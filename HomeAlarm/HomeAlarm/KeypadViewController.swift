//
//  KeypadViewController.swift
//  HomeAlarm
//
//  Created by Lubos Ilcik on 06/10/16.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit

class KeypadViewController: UIViewController {
    lazy var homeAlarm: HomeAlarm = {
        let alarm = HomeAlarm()
        alarm.onError = { text in
            self.statusDisplayLabel.text = text
            self.statusDisplayLabel.textColor = UIColor.red
        }
        alarm.onArmed = {
            self.statusDisplayLabel.text = "ARMED"
            self.statusDisplayLabel.textColor = UIColor.green
        }
        alarm.onDisarmed = {
            self.statusDisplayLabel.text = "DISARMED"
            self.statusDisplayLabel.textColor = UIColor.red
        }
        return alarm
    }()
    
    
    @IBOutlet weak var codeDisplayLabel: UILabel! {
        didSet {
            codeDisplayLabel.text = "enter code"
        }
    }
    
    @IBOutlet weak var statusDisplayLabel: UILabel! {
        didSet {
            statusDisplayLabel.text = "DISARMED"
        }
    }
    
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

    @IBAction func deleteLastDigit() {
        var digit = codeDisplayLabel.text!
        
        guard !digit.isEmpty else { return }
        
        // delete last
        let lastDigitIndex = digit.index(before: digit.endIndex)
        digit.remove(at: lastDigitIndex)
        
        codeDisplayLabel.text = digit
    }
    
    @IBAction func enterCode() {
        let digits = codeDisplayLabel.text!
        homeAlarm.enter(code: digits)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
