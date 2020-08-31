//
//  ViewController.swift
//  dojo1_calc
//
//  Created by Daniel Nascimento on 31/08/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TxtResult: UILabel!
    var num1: Double = 0
    var num2: Double = 0
    var op = ""    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TxtResult.text = "0"
    }
    
        
    @IBAction func buttonsNumber(_ sender: UIButton) {
         if let valor = TxtResult.text {
            if (TxtResult.text == "0") {
                if (sender.tag != 0) {
                    if sender.tag == 13 {
                        TxtResult.text = "0."
                        num2 = Double(TxtResult.text!)!
                    } else {
                        TxtResult.text = String(sender.tag)
                        num2 = Double(TxtResult.text!)!
                    }
                }
            } else {
                if(sender.tag == 13) {
                    TxtResult.text = valor + "."
                    num2 = Double(TxtResult.text!)!
                } else {
                    TxtResult.text = valor + String(sender.tag)
                    num2 = Double(TxtResult.text!)!
                }
            }
        }
    }
    
    @IBAction func buttonsOperator(_ sender: UIButton) {
        let tagOp: Int = Int(sender.tag)
        num1 = num2
        num2 = 0
        TxtResult.text = ""
        
        if tagOp == 14 {
            op = "/"
        }
        else if tagOp == 15 {
            op = "*"
        }
        else if tagOp == 16 {
            op = "-"
        }
        else if tagOp == 17 {
            op = "+"
        }
        else {
            op = ""
        }
    }
    
    @IBAction func buttonIgual(_ sender: UIButton) {
        var result: Double = 0
        if op == "+" {
            result = num1 + num2
            TxtResult.text = String(result)
        }
        else if op == "-" {
            result = num1 - num2
            TxtResult.text = String(result)
        }
        else if op == "*" {
            result = num1 * num2
            TxtResult.text = String(result)
        }
        else if op == "/" {
            result = num1 / num2
            TxtResult.text = String(result)
        }
        num2 = result
        
    }
    
    
    @IBAction func actionBtnC(_ sender: Any) {
        num1 = 0
        num2 = 0
        op = ""
        TxtResult.text = "0"
    }
}

