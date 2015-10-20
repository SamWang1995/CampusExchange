//
//  SignUpViewController.swift
//  CampusExchange
//
//  Created by Samuel Wang on 10/13/15.
//  Copyright © 2015 Samuel Wang. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var confirmPassword: UITextField!
    @IBOutlet var error: UILabel!
    
    @IBAction func signUp(sender: UIButton) {
        
        if(password.text == confirmPassword.text)
        {
            performSegueWithIdentifier("toMain", sender: self)
        }
        else
        {
            error.text = "passwords do not match";
        }
        
        /*PSEUDOCODE:
        if(email is .edu)
        {
        if (password.equals(confirmpassword)
        {
        proceed to next page
        }
        else
        {
        print(passwords do not match)
        }
        }
        else{
        print(email is not valid)
        }
        */
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
