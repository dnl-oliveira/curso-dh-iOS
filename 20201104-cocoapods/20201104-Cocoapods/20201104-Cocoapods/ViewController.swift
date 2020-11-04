//
//  ViewController.swift
//  20201104-Cocoapods
//
//  Created by Daniel Nascimento on 04/11/20.
//

import UIKit
import CardScanner

class ViewController: UIViewController {

    @IBOutlet weak var labelCardNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func actionScanner(_ sender: Any) {
        let scannerView = CardScanner.getScanner { card, date, cvv in
            self.labelCardNumber.text = "\(card) \(date) \(String(describing: cvv))"
        }
        present(scannerView, animated: true, completion: nil)
    }
    
}

