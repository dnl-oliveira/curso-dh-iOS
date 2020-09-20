//
//  ViewController.swift
//  Exercicio_1
//
//  Created by Daniel Nascimento on 18/09/20.
//

import UIKit

class ViewController: UIViewController {

    var arrayItens = [PesquisarProtocol] ()
    
    @IBOutlet weak var searchBarPesquisa: UISearchBar!
    @IBOutlet weak var labelResultadoPesquisa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //testes
        arrayItens.append(Aviao(modelo: "A380", cidade: "Sao Paulo"))
        arrayItens.append(PessoaJuridica(nome: "Portal", cnpj: "12345678900"))
        arrayItens.append(PessoaFisica(nome: "Daniel", cpf: "987.654.321-00"))
        arrayItens.append(Cachorro(nome: "Dunga", raca: "Pastor"))
        arrayItens.append(Caneta(marca: "BIC"))
        
        searchBarPesquisa.delegate = self
    }
    
    func pesquisar(textoPesquisa: String) {
        var arrayFiltrar = [PesquisarProtocol] ()
        for item in arrayItens {
            if item.buscar().lowercased().contains(textoPesquisa.lowercased()){
                arrayFiltrar.append(item)
            }
        }
        var resultado = ""
        for item in arrayFiltrar {
            resultado = "\(item.getFormatado())"
        }
        formataResultado(textoSaida: resultado)
    }
    
    func formataResultado(textoSaida: String) {
        let textoAtual = labelResultadoPesquisa.text!
        let saida = "\(textoAtual)\n\(textoSaida)"
        labelResultadoPesquisa.text = saida
    }


}
extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        if let texto = searchBarPesquisa.text {
            pesquisar(textoPesquisa: texto)
        }
    }
}

