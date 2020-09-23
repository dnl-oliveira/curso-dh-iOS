//
//  MyViewThreeViewController.swift
//  ExercicioNoveTelas
//
//  Created by Daniel Nascimento on 21/09/20.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonMyThreeModalClick(_ sender: Any) {
           if let myViewThreeModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController {
                      // MODAL
                      present(myViewThreeModal, animated: true, completion: nil)
                  }
       }
       
       
       @IBAction func buttonMyThreePushed(_ sender: Any) {
           if let myViewThreePushed = UIStoryboard(name: "MyViewThreePushed", bundle: nil).instantiateInitialViewController() as? MyViewThreePushedViewController {
           
           // NAVIGATION
           navigationController?.pushViewController(myViewThreePushed, animated: true)
       }
    }
    
}
