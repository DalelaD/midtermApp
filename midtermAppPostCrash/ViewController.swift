//
//  ViewController.swift
//  midtermAppPostCrash
//
//  Created by BHSRam3 on 1/4/17.
//  Copyright © 2017 BHSRam3. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var code: UITextField!
    
    
    @IBOutlet weak var dayTable: UITableView!
    
    var dayTbl=[ "Monday","Tuesday","Wednesday","Thursday","Friday"]
    
    //Sets Table info
    
    @IBAction func login(_ sender: AnyObject) {
        performSegue(withIdentifier: "login", sender: "continue")
        print("Logging User in")
        print(name.text)
        print(email.text)
        print(code.text)
        
    }
    
    // Above code is used to "log user in" and navigate to the next page
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dayTable.dataSource=self

        dayTable.delegate=self
        // ^ builds the data source within the code and used to define the table
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dayTbl.count
    }
    //^ counts the number of things in the array
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        
        let cell=UITableViewCell()
        //^ same as assigning a value
        
        cell.textLabel?.text=dayTbl[indexPath.row]
        
        return cell
    }
 //^ says in order what do you want in the cells
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

