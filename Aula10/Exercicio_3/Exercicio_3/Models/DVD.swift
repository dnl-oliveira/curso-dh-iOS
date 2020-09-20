//
//  DVD.swift
//  Exercicio_3
//
//  Created by Daniel Nascimento on 20/09/20.
//

import Foundation

class DVD: Locadora{
    
    var formatoDeVideo: String
    init(nome: String, codigo: Int, formatoDeVideo: String) {
        self.formatoDeVideo = formatoDeVideo
        super.init(nome: nome, codigo: codigo)
    }
    override func fazerLocacao() {
        print("Devolução em 5 dias!")
    }
}
