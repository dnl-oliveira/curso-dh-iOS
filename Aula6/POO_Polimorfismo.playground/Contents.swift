import UIKit

class Funcionario {
    var nome: String
    var salario: Float
    var cpf: String
    
    init (nome: String, salario: Float, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func calcularBonusAnual() -> Float {
        return 0.0
    }
}

class Programador: Funcionario {
    var plataformaDeTrabalho: PlataformaDeTrabalho
    
    init(nome: String, salario: Float, cpf: String, plataformaDeTrabalho: PlataformaDeTrabalho) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init (nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcularBonusAnual() -> Float {
        return (salario * 12) * 0.20
    }
}

class Designer: Funcionario {
    var ferramentaPreferida: FerramentaPreferida
    
    init(nome: String, salario: Float, cpf: String, ferramentaPreferida: FerramentaPreferida) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init (nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcularBonusAnual() -> Float {
        return (salario * 12) * 0.15
    }
}

enum PlataformaDeTrabalho {
    case Android
    case Web
    case iOS
}
enum FerramentaPreferida {
    case Photoshop
    case Sketch
    case Gimp
}

var dev = Programador(nome: "Daniel", salario: 10000, cpf: "98765432100", plataformaDeTrabalho: PlataformaDeTrabalho.iOS)
print("Programador: \(dev.nome) Bonus: \(dev.calcularBonusAnual())")
print("\n---------------\n")

var des = Designer(nome: "Patricia", salario: 10000, cpf: "98765432100", ferramentaPreferida: FerramentaPreferida.Photoshop)
print("Designer: \(des.nome) Bonus: \(des.calcularBonusAnual())")
print("\n---------------\n")

class Veiculo {
    var cor: String
    var preco: Float
    var quantidadeDePassageiros: Int
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int){
        self.cor = cor
        self.preco = preco
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func calcularConsumoCombustivel(distancia: Int) -> Int {
        return 0
    }
}

class Carro: Veiculo {
    var tamanhoDaRoda: Int
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int, tamanhoDaRoda: Int) {
        self.tamanhoDaRoda = tamanhoDaRoda
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calcularConsumoCombustivel(distancia: Int) -> Int {
        return tamanhoDaRoda * quantidadeDePassageiros * distancia
    }
}

class Aviao: Veiculo {
    var piloto: String
    var companhiaAerea: String
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int, piloto: String, companhiaAerea: String) {
        self.piloto = piloto
        self.companhiaAerea = companhiaAerea
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calcularConsumoCombustivel(distancia: Int) -> Int {
        return quantidadeDePassageiros * distancia
    }
}

var gol = Carro(cor: "Preto", preco: 25000, quantidadeDePassageiros: 5, tamanhoDaRoda: 15)
print("Carro na cor: \(gol.cor) Consome em 10Km: \(gol.calcularConsumoCombustivel(distancia: 10))")
print("\n---------------\n")

var embraer = Aviao(cor: "Branco", preco: 1000000, quantidadeDePassageiros: 200, piloto: "Daniel", companhiaAerea: "Azul")
print("Aviao na cor: \(embraer.cor) Consome em 1000Km: \(gol.calcularConsumoCombustivel(distancia: 1000))")
print("\n---------------\n")
