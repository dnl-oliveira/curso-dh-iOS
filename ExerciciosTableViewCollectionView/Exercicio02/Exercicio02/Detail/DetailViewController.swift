//
//  DetailViewController.swift
//  Exercicio02
//
//  Created by Daniel Nascimento on 04/10/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    var pet: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        labelName.text = pet?.name
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
