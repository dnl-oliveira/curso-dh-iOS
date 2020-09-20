//
//  Caneta.swift
//  Exercicio_1
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class Caneta {
    var marca: String
    init(marca: String) {
        self.marca = marca
    }
}
extension Caneta: PesquisarProtocol{
    func buscar() -> String {
       return "\(marca)"
    }
    func getFormatado() -> String {
        return "Caneta: \(marca)"
    }
}
