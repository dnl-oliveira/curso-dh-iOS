//
//  Aviao.swift
//  Exercicio_1
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}
extension Aviao: PesquisarProtocol{
    func buscar() -> String {
       return "\(modelo) \(cidade)"
    }
    func getFormatado() -> String {
        return "Avião: \(modelo) \(cidade)"
    }
}
