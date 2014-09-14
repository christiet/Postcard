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
        // code will evaluate when we press the button
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        messageLabel.hidden = false
        
    }
}

