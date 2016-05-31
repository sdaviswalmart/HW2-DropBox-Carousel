//
//  LoginViewController.swift
//  HW2-DropBox Carousel
//
//  Created by Stephen Davis on 5/30/16.
//  Copyright © 2016 Stephen Davis. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var ParentFieldView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    var initialY: CGFloat!
    var offset: CGFloat!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -160
        
        initialY = ParentFieldView.frame.origin.y
        offset = -100
        
        
        
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name:UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name:UIKeyboardWillHideNotification, object: nil)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func keyboardWillShow(notification: NSNotification!) {
        
        
        scrollView.contentOffset.y = scrollView.contentInset.bottom
        
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        
        ParentFieldView.frame.origin.y = initialY + offset
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        
        
        buttonParentView.frame.origin.y = buttonInitialY
        
        ParentFieldView.frame.origin.y = initialY
        
        
        
    }
    
    @IBAction func didTap(sender: AnyObject) {
        print ("didTap")
        view.endEditing(true)
        
        if (emailField.text == "" || passwordField.text == "") {
            // Show "missing fields" alert here
            let emptyAlertController = UIAlertController(
                title: "Input Email/Password",
                message: "",
                preferredStyle: .Alert
            )
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // Handle response here
            }
            emptyAlertController.addAction(OKAction)
            presentViewController(emptyAlertController, animated: true) {
                // Optional code for what happens after the alert controller has finished presenting
            }
            
        } else {
            if emailField.text == "email" && passwordField.text == "password" {
                // Code that runs if both email and password match the text we are looking for in each case
                
                activityIndicator.startAnimating()
                delay(2) { () -> () in
                    self.performSegueWithIdentifier("firstSegue", sender: nil)
                    
                }
                
                
                
               
                
            } else {
                
                let alertController = UIAlertController(title: "Wrong Combination!", message: "Try again", preferredStyle: .Alert)
                
                // create a cancel action
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
                
                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                
                // Code that runs if either the email or password do NOT match the text we are looking for in each case
                
                
                
            }
           
        }
        
    }
    
    
    @IBAction func didTapLogin(sender: AnyObject) {
        print ("tapped it!")


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
