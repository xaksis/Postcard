//
//  ViewController.swift
//  Postcard
//
//  Created by Akshay Anand on 11/10/14.
//  Copyright (c) 2014 CrayonBytes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message_lbl: UILabel!
    @IBOutlet weak var name_entry: UITextField!
    @IBOutlet weak var message_entry: UITextField!
    @IBOutlet weak var send_btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendBtnPressed(sender: UIButton) {
        message_lbl.text = message_entry.text
        message_lbl.hidden = false
        message_lbl.textColor = UIColor.purpleColor()
        
        message_entry.text = ""
        message_entry.resignFirstResponder()
        
        send_btn.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

