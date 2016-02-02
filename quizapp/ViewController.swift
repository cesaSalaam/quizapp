//
//  ViewController.swift
//  quizapp
//
//  Created by Lifoma Salaam on 2/2/16.
//  Copyright © 2016 CesaSalaam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func dissmissKeyboard(){
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if let text = textField.text{
            label.text = text
        }
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

