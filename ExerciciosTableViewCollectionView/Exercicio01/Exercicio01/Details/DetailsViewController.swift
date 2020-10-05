//
//  DetailsViewController.swift
//  Exercicio01
//
//  Created by Daniel Nascimento on 04/10/20.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labekNone: UILabel!
    @IBOutlet weak var buttonFechar: UIButton!
    var person: People?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labekNone.text = person?.name
    }
    
    
    
   
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
