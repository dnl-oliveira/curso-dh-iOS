import UIKit
import Foundation

/*
 1. Imprima na tela a soma dos primeiros dez números naturais ÍMPARES elevados ao quadrado
 */
func sumOddSquared() {
    
    var result: Int = 0
    
    for index in 1...20 {
        if index % 2 > 0 {
            result = result + (index * index)
        }
    }
    print(result)
}

sumOddSquared()

func sumOddSquared(number : Int) -> Int {
    
    var result: Int = 0
    var index: Int = 0
    
    while index <= number {
        if index % 2 > 0 {
            result = result + (index * index)
        }
        index += 1
    }
    return result
}

print(sumOddSquared(number: 20))

/*
 2. Imprimir números aleatórios entre 0 e 5, até que se imprima um 3. Ajuda: A função arc4random_uniform(_ n: Int) (definida na biblioteca Faundation) retorna um número aleatório entre 0 e o parâmetro, exemplo.
 var numero = arc4random_uniform(5)
 */

func generateRandomNumbers() {
    var num: UInt32 = arc4random_uniform(5)
        
    while num != 3 {
        print("Número: \(num)")
        num = arc4random_uniform(5)
    }
    print("Encontrou o número 3")
}

generateRandomNumbers()
