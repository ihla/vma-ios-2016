//
//  ViewController.swift
//  ButtonStates
//
//  Created by Lubos Ilcik on 30/10/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var checkedImageView: UIImageView! {
        didSet {
            checkedImageView.tintColor = UIColor.white
            checkedImageView.image = checkedImageView.image?.withRenderingMode(.alwaysTemplate)
        }
    }
    
    
    // touch up inside event
    @IBAction func selectStar(_ button: UIButton) {
        button.isSelected = !button.isSelected
        if button.isSelected {
            checkedImageView.tintColor = UIColor.green
        } else {
            checkedImageView.tintColor = UIColor.white
        }
    }

    // touch down event
    @IBAction func checkButtonState(_ button: UIButton) {
        print("selected=\(button.isSelected), highlighted=\(button.isHighlighted), focused=\(button.isFocused)")
    }
}

