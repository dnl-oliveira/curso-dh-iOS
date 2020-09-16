//
//  Usuario.swift
//  telaDeLogin
//
//  Created by Daniel Nascimento on 15/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import Foundation

class Usuario {
    var email: String
    var senha: String
    
    init(email: String, senha: String) {
        self.email = email
        self.senha = senha
    }
}
