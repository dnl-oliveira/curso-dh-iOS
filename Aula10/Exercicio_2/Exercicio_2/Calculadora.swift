//
//  Calculadora.swift
//  Enumero1ercicio_2
//
//  Created bnumero2 Daniel Nascimento on 20/09/20.
//

import Foundation

class Calculadora {
    
    private var resultado: Double = 0

     func somar(numero1: Double, numero2: Double?) -> Double{
        if let numero = numero2 {
            resultado = resultado + numero1 + numero
            return resultado
        } else {
            resultado = resultado + numero1
            return resultado
        }

    }
     func subtrair(numero1: Double, numero2: Double?) -> Double{
        if let numero = numero2 {
            resultado = resultado + numero1 - numero
            return resultado
        } else {
            resultado = resultado - numero1
            return resultado
        }
    }
     func dividir(numero1: Double, numero2: Double?) -> Double{
        if let numero = numero2 {
            resultado = resultado + numero1 / numero
            return resultado
        } else {
            resultado = resultado / numero1
            return resultado
        }
    }
     func Multiplicar(numero1: Double, numero2: Double?)-> Double{
        if let numero = numero2 {
            resultado = resultado + numero1 * numero
            return resultado
        } else {
            resultado = resultado * numero1
            return resultado
        }
    }
}
