//
//  Animal.swift
//  Exercicio02
//
//  Created by Daniel Nascimento on 04/10/20.
//

import Foundation

class Animal {
    var name: String
    var breed: String
    var weight: Double
    var specie: String
    
    init(name: String, breed: String, weight: Double, specie: String) {
        self.name = name
        self.breed = breed
        self.weight = weight
        self.specie = specie
    }
}
