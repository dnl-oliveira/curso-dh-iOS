//
//  ViewController.swift
//  1005_DesafioConexoes
//
//  Created by Daniel Nascimento on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel?
    @IBOutlet var label2: UILabel?
    @IBOutlet var button1: UIButton?
    @IBOutlet var textField1: UITextField?
    @IBOutlet var searchBar1: UISearchBar?
    @IBOutlet var imageView1: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButton1(_ sender: UIButton) {
        label1?.text = "Clicado"
    }


}

