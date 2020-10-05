//
//  People.swift
//  Exercicio01
//
//  Created by Daniel Nascimento on 03/10/20.
//

import Foundation

class People {
    var name: String
    var cargo: String
    var email: String
    
    init(name: String, cargo: String, email: String) {
        self.cargo = cargo
        self.email = email
        self.name = name
    }
    
    func createPeoples() -> [People] {
        var ret = [People]()
        var name: String
        var email: String
        var cargo: String
        var _: Int = 0
        for _ in 0...16 {
            name = "Nome: " + randomString(length: 8)
            email = "E-mail: " + name + "@email.com"
            cargo = "Cargo: " + randomString(length: 5)
            ret.append(People(name: name, cargo: cargo, email: email))
        }
        
        return ret
    }
    
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
}
