//
//  ViewController.swift
//  codeBlood
//
//  Created by Nitin Reddy on 3/17/16.
//  Copyright © 2016 Nitin Reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var OpType : String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func btnRegister(sender: AnyObject) {
//Registration needs all fields entered
//        if ((lblRegisterName.text?.isEmpty || lblRegisterEmail.text?.isEmpty || lblRegisterPhone.text?.isEmpty || lblRegisterCity.text?.isEmpty || lblRegisterBloodGroup.selectedSegmentIndex < 0 || lblRegisterRhesus.selectedSegmentIndex < 0).boolValue == true) {
//            showValidationError("All fields must be entered")
//        }
        if (lblRegisterName.text!.isEmpty || lblRegisterEmail.text!.isEmpty || lblRegisterPhone.text!.isEmpty || lblRegisterCity.text!.isEmpty || lblRegisterBloodGroup.selectedSegmentIndex < 0 || lblRegisterRhesus.selectedSegmentIndex < 0 ) {
            showValidationError("All fields must be entered")
        }
    }
    
    @IBOutlet weak var lblRegisterName: UITextField!
    @IBOutlet weak var lblRegisterEmail: UITextField!
    @IBOutlet weak var lblRegisterPhone: UITextField!
    @IBOutlet weak var lblRegisterCity: UITextField!
    @IBOutlet weak var lblRegisterBloodGroup: UISegmentedControl!
    @IBOutlet weak var lblRegisterRhesus: UISegmentedControl!
    
    
    
    @IBAction func btnSearch(sender: AnyObject) {
//Search should require all fields - no point contacting someone without all of location, blood group, and rhesus factor
        if (lblSearchCity.text!.isEmpty || lblSearchBloodGroup.selectedSegmentIndex < 0 || lblSearchRhesus.selectedSegmentIndex < 0) {
            showValidationError("All fields must be entered")
        }
    }
    
    @IBOutlet weak var lblSearchCity: UITextField!
    @IBOutlet weak var lblSearchBloodGroup: UISegmentedControl!
    @IBOutlet weak var lblSearchRhesus: UISegmentedControl!
    
    
    
    func showValidationError(msg : String) {
        let alertCtl : UIAlertController = UIAlertController(title: "Error", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        let btnOk : UIAlertAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
        alertCtl.addAction(btnOk)
        showViewController(alertCtl, sender: self)
    }
}

