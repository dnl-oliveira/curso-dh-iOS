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

