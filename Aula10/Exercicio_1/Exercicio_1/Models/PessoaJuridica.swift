//
//  PessoaJuridica.swift
//  Exercicio_1
//
//  Created by Daniel Nascimento on 18/09/20.
//

import Foundation
class PessoaJuridica: Ser {
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}
extension PessoaJuridica: PesquisarProtocol{
    func buscar() -> String {
        return "\(nome) \(cnpj)"
    }
    func getFormatado() -> String {
        return "Pessoa Juridica: \(nome) \(cnpj)"
    }
}
