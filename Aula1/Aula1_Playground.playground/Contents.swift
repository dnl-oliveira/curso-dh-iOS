import UIKit

/*
 Calculos de bolas perdidas
**/
var totalBolas: Int = 10
var bolasPerdidas: Int = 2

var totalRestantes: Int = totalBolas - bolasPerdidas
print("Restam: \(totalRestantes)")

bolasPerdidas = 0
totalRestantes = totalBolas - bolasPerdidas

print("Restam: \(totalRestantes)")

/*
 O índice é calculado da seguinte maneira: divide-se o peso do paciente pela sua altura elevada ao quadrado. Diz-se que o indivíduo tem peso normal quando o resultado do IMC está entre 18,5 e 24,9.
**/
var peso: Float = 100
var altura: Float = 1.87
var imc: Float = peso / (altura * altura)

print("Seu IMC é: \(imc)")

/*
 Concatenar string
 Nome no padrão BR, nome sobrenome
 Nome no padrão US, sobrenome, nome
**/

var nome: String = "Daniel"
var sobrenome: String = "Nascimento"

//concatenar
var nomeCompletoBR: String = nome + " " + sobrenome
//concatenar com interpolação de strings
var nomeCompletoUS: String = "\(sobrenome), \(nome)"

print("Padrão BR: \(nomeCompletoBR)")
print("Padrão US: \(nomeCompletoUS)")
