//
//  ViewController.swift
//  midtermAppPostCrash
//
//  Created by BHSRam3 on 1/4/17.
//  Copyright © 2017 BHSRam3. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

  
    @IBAction func login(_ sender: AnyObject) {
        performSegue(withIdentifier: "login", sender: "continue")
        print("Logging User in")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

