//
//  sides1.swift
//  midtermAppPostCrash
//
//  Created by BHSRam3 on 1/5/17.
//  Copyright © 2017 BHSRam3. All rights reserved.
//

import Foundation

import UIKit

class sides1: UIViewController{
    
    @IBOutlet weak var answer: UILabel!
    
    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    
    @IBAction func totalButton(_ sender: AnyObject) {
        
        answer.text = "Your total is \(Double(num1.text!)! + Double(num2.text!)!)"
        
    }
    
    
}
