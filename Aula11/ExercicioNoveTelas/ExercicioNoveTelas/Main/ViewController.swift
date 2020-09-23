//
//  ViewController.swift
//  ExercicioNoveTelas
//
//  Created by Daniel Nascimento on 21/09/20.
//

import UIKit

class ViewController: UIViewController {

   
    @IBAction func actionButtonOne(_ sender: Any) {
        if let viewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController {
            navigationController?.pushViewController(viewOne, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actionButtonTwo(_ sender: Any) {
        if let viewTwo = UIStoryboard(name: "MyViewTwo", bundle: nil).instantiateInitialViewController() as? MyViewTwoViewController {
            navigationController?.pushViewController(viewTwo, animated: true)
        }
    }
    
    @IBAction func actionButtonThree(_ sender: Any) {
        if let viewThree = UIStoryboard(name: "MyViewThree", bundle: nil).instantiateInitialViewController() as? MyViewThreeViewController {
            navigationController?.pushViewController(viewThree, animated: true)
        }
    }
    
}

