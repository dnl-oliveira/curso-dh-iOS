//
//  Cachorro.swift
//  Exercicio_1
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class Cachorro: Ser {
    var raca: String
    init(nome: String, raca: String) {
        self.raca = raca
        super.init(nome: nome)
    }
}
extension Cachorro: PesquisarProtocol{
    func buscar() -> String {
       return "\(nome) \(raca)"
    }
    func getFormatado() -> String {
        return "Cachorro: \(nome) \(raca)"
    }
}

