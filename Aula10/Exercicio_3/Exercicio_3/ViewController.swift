//
//  ViewController.swift
//  Exercicio_3
//
//  Created by Daniel Nascimento on 20/09/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ferrari = Carro(nome: "Daniel", codigo: 11111, placa: "AAA1111")
        ferrari.fazerLocacao()
        
        let matrix = DVD(nome: "Patricia", codigo: 22222, formatoDeVideo: ".MP4")
        matrix.fazerLocacao()
        
        let racionais = CD(nome: "Daniel", codigo: 33333, cantor: "Racionais")
        racionais.fazerLocacao()
        
        let danBrown = Livros(nome: "Patricia", codigo: 44444, quantidadeDePaginas: 341)
        danBrown.fazerLocacao()
        
        
    }


}

