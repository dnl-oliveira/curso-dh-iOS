//
//  Livros.swift
//  Exercicio_3
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class Livros: Locadora {
    var quantidadeDePaginas: Int
    
    init(nome: String, codigo: Int, quantidadeDePaginas: Int) {
        self.quantidadeDePaginas = quantidadeDePaginas
        super.init(nome: nome, codigo: codigo)
    }
    override func fazerLocacao() {
        print("Devolução em 15 dias!")
    }
}
