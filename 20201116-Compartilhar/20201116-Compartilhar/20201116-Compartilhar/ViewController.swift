//
//  ViewController.swift
//  20201116-Compartilhar
//
//  Created by Daniel Nascimento on 16/11/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: Any) {
        let actVC = UIActivityViewController(activityItems: ["Texto para compartilhar"], applicationActivities: nil)
        self.present(actVC, animated: true, completion: nil)
    }
    
}

