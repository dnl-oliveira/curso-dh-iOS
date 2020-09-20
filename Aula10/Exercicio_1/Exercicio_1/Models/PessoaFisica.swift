//
//  PessoaFisica.swift
//  Exercicio_1
//
//  Created by Daniel Nascimento on 18/09/20.
//

import Foundation

class PessoaFisica: Ser {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
    }
}
extension PessoaFisica: PesquisarProtocol{
    func buscar() -> String {
        return "\(nome) \(cpf)"
    }
    func getFormatado() -> String {
        return "Pessoa Fisíca: \(nome) \(cpf)"
    }
}

