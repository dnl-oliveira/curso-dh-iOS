//
//  ViewController.swift
//  Exercicio_2
//
//  Created by Daniel Nascimento on 20/09/20.
//

import UIKit

class ViewController: UIViewController {

    var calculadora = Calculadora()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //print(calculadora.somar(numero1: 1, numero2: 1))
        //print(calculadora.dividir(numero1: 1, numero2: nil))
        print("-------Outros Testes--------")
        //print(calculadora.subtrair(numero1: 8, numero2: 7))
        print(calculadora.dividir(numero1: 10, numero2: 5))
        //print(calculadora.Multiplicar(numero1: 5, numero2: 8))
    }


}

