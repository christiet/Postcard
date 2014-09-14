//
//  ViewController.swift
//  Postcard
//
//  Created by Tony Christie on 13/09/2014.
//  Copyright (c) 2014 Spire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterMessageTextChanged(sender: UITextField) {
        sendMailButton.setTitle("Send Mail", forState: UIControlState.Normal)
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        // Hide the keyboard
        enterMessageTextField.resignFirstResponder()
        // Toggle send mail button message
        messageLabel.textColor = UIColor.redColor()
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        messageLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
    }
}

