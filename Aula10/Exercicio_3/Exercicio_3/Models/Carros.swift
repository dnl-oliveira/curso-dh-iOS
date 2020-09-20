//
//  Carros.swift
//  Exercicio_3
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class Carro: Locadora {
    var placa: String
    
    init(nome: String, codigo: Int, placa: String){
      self.placa = placa
      super.init(nome: nome, codigo: codigo)
      }
    
    override func fazerLocacao() {
        print("Devolução em 7 dias!")
    }
}
