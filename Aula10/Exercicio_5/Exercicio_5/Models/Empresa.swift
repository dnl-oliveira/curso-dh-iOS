//
//  Empresa.swift
//  Exercicio_5
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class Empresa: MonroeStreetJournal {
    var numeroFuncionarios: Int
    
    init(nome: String, documento: String, numeroFuncionarios: Int) {
        self.numeroFuncionarios = numeroFuncionarios
        super.init(nome: nome, documento: documento)
    }
    override func distribuir() {
        print("Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados.")
    }
}
