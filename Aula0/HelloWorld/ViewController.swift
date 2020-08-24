//
//  ViewController.swift
//  HelloWorld
//
//  Created by Daniel Nascimento on 24/08/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
          
    }
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func click(_ sender: UIButton) {
        lbl.text = "Te amo!"
    }
}

