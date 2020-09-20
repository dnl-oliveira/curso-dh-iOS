//
//  CD.swift
//  Exercicio_3
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class CD: Locadora {
    var cantor: String
    
    init(nome: String, codigo: Int, cantor: String){
    self.cantor = cantor
    super.init(nome: nome, codigo: codigo)
    }
    
    override func fazerLocacao() {
        print("Devolução em 3 dias!")
    }
}
