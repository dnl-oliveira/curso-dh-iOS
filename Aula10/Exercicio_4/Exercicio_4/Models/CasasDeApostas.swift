//
//  CasasDeApostas.swift
//  Exercicio_4
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class CasasDeApostas: NotificacaoProtocol {
    private var patrimonio: Int = 0
        
    func notificar() {
       patrimonio += 1000
       print("Ganhando grana: \(patrimonio)")
    }
}
