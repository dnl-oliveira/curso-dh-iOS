//
//  Pessoa.swift
//  Exercicio_5
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class Pessoa: MonroeStreetJournal {
    
    var endereco: String
    
    init(nome: String, documento: String, endereco: String) {
        self.endereco = endereco
        super.init(nome: nome, documento: documento)
    }
    override func distribuir() {
        print("Muito obrigada, MonroeStreetJournal. Vocês são demais!")
    }
}
