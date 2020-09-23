//
//  MyViewOneViewController.swift
//  ExercicioNoveTelas
//
//  Created by Daniel Nascimento on 21/09/20.
//

import UIKit

class MyViewOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func actionButtonPushed(_ sender: Any) {
        if let viewOnePushed = UIStoryboard(name: "MyViewOnePushed", bundle: nil)
            .instantiateInitialViewController() as? MyViewOnePushedViewController {
            navigationController?.pushViewController(viewOnePushed, animated: true)
        }
    }
    
    @IBAction func actionButtonModal(_ sender: Any) {
        if let myViewOneModalViewController = UIStoryboard(name: "MyViewOneModal", bundle: nil)
            .instantiateInitialViewController() as? MyViewOneModalViewController {
            present(myViewOneModalViewController, animated: true, completion: nil)
        }
    }
}
