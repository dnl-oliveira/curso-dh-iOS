//
//  MyViewTwoViewController.swift
//  ExercicioNoveTelas
//
//  Created by Daniel Nascimento on 21/09/20.
//

import UIKit

class MyViewTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonMyViewTwoModalClick(_ sender: Any) {
        if let myViewTwoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
                   present(myViewTwoModal, animated: true, completion: nil)
               }
    }
    
    
    @IBAction func buttonMyTwoPushed(_ sender: Any) {
        if let myViewTwoPushed = UIStoryboard(name: "MyViewTwoPushed", bundle: nil).instantiateInitialViewController() as? MyViewTwoPushedViewController {
        navigationController?.pushViewController(myViewTwoPushed, animated: true)
    
        }
    }

}
