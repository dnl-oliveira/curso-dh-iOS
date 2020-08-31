//
//  ViewController.swift
//  calcDojo
//
//  Created by Raphael A. P. Oliveira on 31/08/20.
//  Copyright © 2020 Raphael A. P. Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var variable: UILabel!
    var aux: Int = 0
    var aux2: Int = 0
    var operation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        variable.text = "0"
    }
    
    // Buttons with numbers
    @IBAction func number(_ sender: UIButton) {
        if let valor = variable.text {
            if (variable.text == "0") {
                if (sender.tag != 0) {
                    variable.text = String(sender.tag)
                    aux = Int(variable.text!)!
                }
            } else {
                variable.text = valor + String(sender.tag)
                aux = Int(variable.text!)!
            }
        }
    }
    
    // Button with C
    @IBAction func clear(_ sender: Any) {
        variable.text = "0"
        aux = 0
        aux2 = 0
        operation = ""
    }
    
    // Operations
    @IBAction func sum(_ sender: Any) {
        aux2 = aux
        variable.text = "0"
        operation = "+"
    }
    
    @IBAction func subt(_ sender: Any) {
        aux2 = aux
        variable.text = "0"
        operation = "-"
    }
    
    @IBAction func times(_ sender: Any) {
        aux2 = aux
        variable.text = "0"
        operation = "x"
    }
    
    @IBAction func division(_ sender: Any) {
        aux2 = aux
        variable.text = "0"
        operation = "/"
    }
    
    @IBAction func equal(_ sender: Any) {
        if (operation == "+") {
            variable.text = String(aux2 + aux)
            aux = Int(variable.text!)!
        } else if (operation == "-") {
            variable.text = String(aux2 - aux)
            aux = Int(variable.text!)!
        } else if (operation == "x") {
            variable.text = String(aux2 * aux)
            aux = Int(variable.text!)!
        } else if (operation == "/") {
            variable.text = String(aux2 / aux)
            aux = Int(variable.text!)!
        }
    }
    
}

