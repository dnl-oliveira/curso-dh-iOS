//
//  MyViewOneModalViewController.swift
//  ExercicioNoveTelas
//
//  Created by Daniel Nascimento on 21/09/20.
//

import UIKit

class MyViewOneModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
