//
//  ViewController.swift
//  Exercicio_5
//
//  Created by Daniel Nascimento on 20/09/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let danielSA = Empresa(nome: "Daniel SA", documento: "12345678900", numeroFuncionarios: 10)
        danielSA.distribuir()

        let daniel = Pessoa(nome: "Daniel", documento: "1213456789", endereco: "Beethoven, 45")
        daniel.distribuir()
    }


}

