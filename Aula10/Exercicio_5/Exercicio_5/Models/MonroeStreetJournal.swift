//
//  MonroeStreetJournal.swift
//  Exercicio_5
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class MonroeStreetJournal: DigitalProtocol {  
    var nome: String
    var documento: String
    
    init(nome: String, documento: String) {
        self.nome = nome
        self.documento = documento
    }
    func distribuir() {
    }
}
