//
//  ViewController.swift
//  Exercicio_4
//
//  Created by Daniel Nascimento on 20/09/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let aposta = CasasDeApostas()
        aposta.notificar()
        aposta.notificar()

        let tv = KronikaTv()
        tv.notificar()

        let ladrao = Apostadores()
        ladrao.notificar()

    }


}

