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

protocol Voador {
    func voar() -> Void
}

class Pato: Voador {
    private var energia: Int
    private var energiaGastaPorVoo: Int = 5
    
    convenience init() {
        self.init(energia: 30)
    }
    
    init(energia: Int) {
        self.energia = energia
    }
    
    func voar() {
        if self.isPossivelVoar(energiaGasta: self.energiaGastaPorVoo) {
            self.consumirEnergia(energiaGasta: energiaGastaPorVoo)
            print("Estou voando como um pato.")
        } else {
            print("O pato não consegue voar porque está sem energia.")
        }
    }
    
    private func isPossivelVoar(energiaGasta: Int) -> Bool {
        if self.energia - self.energiaGastaPorVoo >= 0 {
            return true
        } else {
            return false
        }
    }
    
    private func consumirEnergia(energiaGasta: Int) {
        if self.isPossivelVoar(energiaGasta: energiaGasta) {
            self.energia -= energiaGasta
        }
    }
    
    func mostrarEnergiaRestante() -> Int {
        return self.energia
    }
}

class Aviao: Voador {
    private var horasDeVoo: Int
    private var horasGanhasPorVoo = 13
    
    convenience init() {
        self.init(horasDeVoo: 0)
    }
    
    init(horasDeVoo: Int) {
        self.horasDeVoo = horasDeVoo
    }
    
    func voar() {
        self.incrementarHorasVoo(horasDeVoo: self.horasGanhasPorVoo)
        print("Estou voando como um avião.")
    }
    
    private func incrementarHorasVoo(horasDeVoo: Int) {
        self.horasDeVoo += horasDeVoo
    }
    
    func mostrarHorasDeVoo() -> Int {
        return self.horasDeVoo
    }
}

class SuperHomem: Voador {
    private var experiencia: Int
    private var experienciaGanhaPorVoo: Int = 3
    
    convenience init() {
        self.init(experiencia: 0)
    }
    
    init(experiencia: Int) {
        self.experiencia = experiencia
    }
    
    func voar() {
        self.incrementarExperiencia(experienciaGanha: self.experienciaGanhaPorVoo)
        print("Estou voando como um campeão.")
    }
    
    private func incrementarExperiencia(experienciaGanha: Int) {
        self.experiencia += experienciaGanha
    }
    
    func mostrarExperiencia() -> Int {
        return self.experiencia
    }
}

class TorreControle {
    var voadores = [Voador]()
    
    func adicionarVoador(voador: Voador) {
        self.voadores.append(voador)
    }
    
    func voamTodos() {
        for voador in self.voadores {
            voador.voar()
        }
    }
}


let torre = TorreControle()
let pato = Pato(energia: 6)
let aviao = Aviao()
let superHomem = SuperHomem()

print("---------------")
torre.adicionarVoador(voador: pato)
print("Energia Restante do Pato: \(pato.mostrarEnergiaRestante())")

torre.adicionarVoador(voador: aviao)
print("Horas de Voo do Aviao: \(aviao.mostrarHorasDeVoo())")

torre.adicionarVoador(voador: superHomem)
print("Experiência do super-homem: \(superHomem.mostrarExperiencia())")

print("---------------")
torre.voamTodos()

torre.adicionarVoador(voador: pato)
print("Energia Restante do Pato: \(pato.mostrarEnergiaRestante())")

torre.adicionarVoador(voador: aviao)
print("Horas de Voo do Aviao: \(aviao.mostrarHorasDeVoo())")

torre.adicionarVoador(voador: superHomem)
print("Experiência do super-homem: \(superHomem.mostrarExperiencia())")

print("---------------")
torre.voamTodos()

torre.adicionarVoador(voador: pato)
print("Energia Restante do Pato: \(pato.mostrarEnergiaRestante())")

torre.adicionarVoador(voador: aviao)
print("Horas de Voo do Aviao: \(aviao.mostrarHorasDeVoo())")

torre.adicionarVoador(voador: superHomem)
print("Experiência do super-homem: \(superHomem.mostrarExperiencia())")
print("---------------")
