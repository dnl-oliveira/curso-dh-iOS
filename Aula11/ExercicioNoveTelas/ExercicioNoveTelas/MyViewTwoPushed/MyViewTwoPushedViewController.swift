//
//  MyViewTwoPushedViewController.swift
//  ExercicioNoveTelas
//
//  Created by Daniel Nascimento on 21/09/20.
//

import UIKit

class MyViewTwoPushedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionClose(_ sender: Any) {
           navigationController?.popViewController(animated: true)
           
       }

}
