//
//  ViewController.swift
//  UnitConverter
//
//  Created by netive on 2015. 5. 23..
//  Copyright (c) 2015년 netive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func textFieldReturn(sender: AnyObject) {
        sender.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        tempText.endEditing(true)
    }
    
    @IBOutlet weak var tempText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func convertTemp(sender: AnyObject) {
        let fahrenheit = (tempText.text as NSString).doubleValue
        let celsius = (fahrenheit - 32) / 1.8
        let resultText = "celsius \(celsius)"
        resultLabel.text = resultText
        
        
    }
    
    
}

