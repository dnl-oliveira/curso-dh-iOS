import UIKit

//- Um vendedor de loja e possui nome, idade e cpf, saldo em conta
//    - vende em sua loja ternos, vestidos e bonés
//    - definir um método vender (quantidadeDePecas: Int, tipoDePeca: String).
//- Cada terno custa 400 reais,
//   - caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
//- Cada vestido custa 900 reais,
//   - caso o cliente compre 5 vestidos ele ganha um véu de noiva (que custa 250 reais) de brinde.
//- Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.
//- Encapsule todos os métodos necessários.
//- O vendedor é o dono da loja

public class Vendedor {
    private var nome: String
    private var idade: Int
    private var cpf: String
    private var saldoEmConta: Float
    
    init (nome: String, idade: Int, cpf: String, saldoEmConta: Float) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }

    public func getNome() -> String {
        return nome
    }
    
    public func setNome(nome: String) {
        self.nome = nome
    }
    
    public func getIdade() -> Int {
        return idade
    }
    
    public func setIdade(idade: Int) {
        self.idade = idade
    }
    
    public func getCpf() -> String {
        return cpf
    }
    
    public func setCpf(cpf: String) {
        self.cpf = cpf
    }
    
    public func getSaldoEmConta() -> Float {
        return saldoEmConta
    }
    
    private func setSaldoEmConta(saldoEmConta: Float) {
        self.saldoEmConta += saldoEmConta
    }
    
    public func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        var valorDaVenda: Float = 0;
        if(tipoDePeca == "terno") {
            if(quantidadeDePecas < 3) {
                valorDaVenda = Float(quantidadeDePecas) * 400;
                print("\(valorDaVenda)")
            }
            else {
                valorDaVenda = Float(quantidadeDePecas * 400) - Float(50 * quantidadeDePecas);
                print("\(valorDaVenda)")
            }
        }
        else if(tipoDePeca == "vestido") {
            if(quantidadeDePecas < 5) {
                valorDaVenda = Float(quantidadeDePecas) * 900;
                print("\(valorDaVenda)")
            }
            else {
                valorDaVenda = Float(quantidadeDePecas * 900) - 250;
                print("\(valorDaVenda)")
            }
        }
        else if(tipoDePeca == "bone") {
            valorDaVenda = Float(quantidadeDePecas * 50);
            let quantidadeDeBrindes = quantidadeDePecas / 3;
            if(quantidadeDeBrindes > 0) {
                valorDaVenda -= Float(valorDaVenda - Float(50 * quantidadeDeBrindes) );
                print("\(valorDaVenda)")
            }
        }
        setSaldoEmConta(saldoEmConta: valorDaVenda)
    }
}

    let vendedor = Vendedor(nome: "Gustavo", idade: 36, cpf: "12312312312", saldoEmConta: 0)
    vendedor.vender(quantidadeDePecas: 10, tipoDePeca: "terno")
    print(vendedor.getSaldoEmConta())


    vendedor.vender(quantidadeDePecas: 1, tipoDePeca: "vestido")
    print(vendedor.getSaldoEmConta())

/*
 Exercício proposto pelo professor Narlei.
 
 Temos uma loja de carros, o nome dela é Venda Certa. Essa loja tem um estoque de quantos carros tem no total na loja. No momento, eles tem 50 carros em estoque.
 Para sair um carro do estoque, esse carro precisa ser vendido, não há outro modo de retirar produtos no estoque. Esse estoque também nunca pode ficar negativo.
 A fábrica falou pra loja que se eles conseguirem vender pelo menos 5 carros de uma só vez, a fábrica vai dar 1 carro de bonificação pra loja.
 A fábrica também falou que, no momento que terminarem de vender todo estoque, a fábrica vai dar 2 carros de bonificação pra loja.
 Teste de mesa:
 tem 50
 se vende 1 fica com 49
 tem 49
 se vende 5 fica com 44
 ganha 1 da fábrica
 tem 45
 vende 44 fica com 1
 ganha 1 da fábrica
 tem 2
 vende 2 fica com 0
 ganha 2 da fábrica
 tem 2
 
 */

public class Loja {
    var estoqueCarros: Int
    
    init (estoqueCarros: Int) {
        self.estoqueCarros = estoqueCarros
    }
    
    func getEstoqueCarros() -> Int {
        return estoqueCarros
    }
    
    private func incrementarEstoqueCarros(estoqueCarros: Int) {
        self.estoqueCarros += estoqueCarros
    }
    
    private func decrementarEstoqueCarros(estoqueCarros: Int) {
        self.estoqueCarros -= estoqueCarros
    }
    
    func venderCarro(quantidade: Int) {
        if getEstoqueCarros() == 0 {
            //print("Bonus da fábrica: ganharam 2 carros")
            incrementarEstoqueCarros(estoqueCarros: 2)
        }
        
        if getEstoqueCarros() >= quantidade {
            if quantidade >= 5 {
                incrementarEstoqueCarros(estoqueCarros: 1)
                //print("Vendeu 5 ou mais carros, ganhou um da fábrica")
            }
            decrementarEstoqueCarros(estoqueCarros: quantidade)
        }
        else {
            print("Quantidade de carros insulficiente para realizar essa venda")
        }
    }
}

let vendaCerta = Loja(estoqueCarros: 50)

vendaCerta.venderCarro(quantidade: 1)
print("Quantidade estoque apos vender 1:", vendaCerta.getEstoqueCarros())
vendaCerta.venderCarro(quantidade: 5)
print("Quantidade estoque apos vender 5:", vendaCerta.getEstoqueCarros())
vendaCerta.venderCarro(quantidade: 44)
print("Quantidade estoque apos vender 44:", vendaCerta.getEstoqueCarros())
vendaCerta.venderCarro(quantidade: 2)
print("Quantidade estoque apos vender 2:", vendaCerta.getEstoqueCarros())
vendaCerta.venderCarro(quantidade: 0)
print("Quantidade estoque apos vender 0:", vendaCerta.getEstoqueCarros())
vendaCerta.venderCarro(quantidade: 4)
