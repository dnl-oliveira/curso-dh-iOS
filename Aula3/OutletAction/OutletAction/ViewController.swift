//
//  ViewController.swift
//  OutletAction
//
//  Created by Daniel Nascimento on 31/08/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func action(_ sender: Any) {
        labelHello.text = "Daniel"
    }
    
}

