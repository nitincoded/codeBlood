//
//  ViewController.swift
//  codeBlood
//
//  Created by Nitin Reddy on 3/17/16.
//  Copyright © 2016 Nitin Reddy. All rights reserved.
//

import UIKit

class NavigationViewController: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let myView: ViewController? = segue.destinationViewController as? ViewController
        if (myView != nil && segue.identifier == "registerAsDonor") {
            myView?.OpType = "Donor"
        }
        else
        if (myView != nil && segue.identifier == "registerAsRecipient") {
            myView?.OpType = "Recipient"
        }
        else
        if (myView != nil && segue.identifier == "findDonor") {
            myView?.OpType = "Donor"
        }
        else
        if (myView != nil && segue.identifier == "findRecipient") {
            myView?.OpType = "Recipient"
        }
    }
    
}

