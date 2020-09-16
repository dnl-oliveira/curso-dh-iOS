//
//  UsuarioRepositorio.swift
//  telaDeLogin
//
//  Created by Daniel Nascimento on 15/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import Foundation

class UsuarioRepositorio {
    
    private var arrayUsuario: [Usuario] = []
    
    init() {}
    
    func cadastraUsuario(usuario: Usuario) {
         arrayUsuario.append(usuario)
    }
    
    func verificarSeUsuarioExiste(usuario: Usuario) -> Bool {
        
        var retorno: Bool = false
        
        if arrayUsuario.count == 0 {
            retorno = false
        } else {
            for item in arrayUsuario {
                if (item.email == usuario.email) {
                    retorno = true
                }
            }
        }
        
        return retorno
    }
    
    func autenticarUsuario(usuario: Usuario) -> Bool {
        
        var retorno: Bool = false
        
        if arrayUsuario.count == 0 {
            retorno = false
        } else {
            for item in arrayUsuario {
                if (item.email == usuario.email && item.senha == usuario.senha) {
                    retorno = true
                }
            }
        }
        
        return retorno
    }
    
    func primeiroCadastro() -> Bool {
        if arrayUsuario.count == 1 {
            return true
        } else {
            return false
        }
    }
}
