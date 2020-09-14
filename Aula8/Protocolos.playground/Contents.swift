import UIKit

protocol Imprimivel {
    func imprimir()
}

class Contrato: Imprimivel {
    func imprimir() {
        print("Sou um contrato muito legal")
    }
}

class Foto: Imprimivel {
    func imprimir() {
        print("Sou uma selfie")
    }
}

class Documento: Imprimivel {
    func imprimir() {
        print("Sou um documento do world")
    }
}

class Boleto: Imprimivel {
    func imprimir() {
        print("Vai ter que pagar hoje!")
    }
}

class Impressora {
    private var arrayImprimiveis = [Imprimivel]()
    
    func imprimirTudo(){
        for item in arrayImprimiveis {
            item.imprimir()
        }
    }
    
    func agregarImprimivel(imprimivel: Imprimivel){
        arrayImprimiveis.append(imprimivel)
    }
}
