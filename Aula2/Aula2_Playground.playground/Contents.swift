import UIKit

//func retorneEsseNumero (numero: Int) -> Int { return numero }
//
////funcao void
//func imprimeOla() {
//    print("Olá")
//}
//
////funcao com retorno
//func entendeu() -> Bool {
//    return true
//}
//
////funcao com parametro
//func imprime(texto: String) {
//    print(texto)
//}
//
//var qualquerCoisa = 123
//
//if qualquerCoisa == 123 {
//    print("é igual")
//}
//else {
//    print("nao é igual")
//}
//
//if qualquerCoisa == 123 {
//    print("é igual")
//}
//else if qualquerCoisa == 1234 {
//    print("é igual 1234")
//}

/* Exercicio 1 - Definir três métodos que imprimam saudações diferentes em tela e sejam executados da seguinte forma:
 cumprimentarA(pessoa: “João”) cumprimentar(a: “João”) cumprimentarA(“João”) */

func cumprimentarA(pessoa: String) {
    print("Olá \(pessoa)")
}

func cumprimentar(a: String) {
    print("Bom dia \(a)")
}

func cumprimentarA(_ text: String) {
    print("Boa tarde \(text)")
}

cumprimentarA(pessoa: "João")
cumprimentar(a: "João")
cumprimentarA("João")

/*
 2. Escrever o método eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool deve usar dois números inteiros como parâmetros e retornar true se o primeiro número for menor que o segundo número ou false , caso contrário.
 */

func eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool {
//    if(oPrimeiro < oSegundo) {
//        return true
//    }
//    return false
    return oPrimeiro < oSegundo
}

print(eMenor(oPrimeiro: 3, oSegundo: 5))
print(eMenor(oPrimeiro: 7, oSegundo: 5))
print(eMenor(oPrimeiro: 10, oSegundo: 10))

/*
 Escrever o método eImparMaiorQueDez(umNumero: Int) -> Bool que deve analisar um número inteiro como parâmetro e retornar true se o número for ímpar e maior do que dez e false, caso contrário.
 */
print("\nExercicio maior que dez\n")
func impareMaiorQueDez(umNumero: Int) -> Bool {
    if umNumero > 10 && umNumero % 2 > 0 {
        return true
    }
    else {
        return false
    }
}

print(impareMaiorQueDez(umNumero: 3))
print(impareMaiorQueDez(umNumero: 4))
print(impareMaiorQueDez(umNumero: 13))
print(impareMaiorQueDez(umNumero: 14))

print("\nArrays\n")

var arrayNames = [String]()
arrayNames.append("Joao")
arrayNames.append("Marcos")

let name = arrayNames[0]

arrayNames [0] = "Rafael"

print("\nDicionarios\n")

var aurelio = [String: String]()

aurelio["Array"] = "Lista com dados"
aurelio["dicionario"] = "Lista com chave e valor"

print("\nLoop\n")

var index: Int = 0

while index < arrayNames.count {
    print(arrayNames[index])
    index += 1
}

index = 0

for index in 0...3 {
    print(index)
}
//foreach - for index in 1..<4 {
for letra in ["A","B","C"] {
    print(letra)
}

index = 1
repeat {
    print("Index: \(index)")
    index += 1
} while index <= 10

