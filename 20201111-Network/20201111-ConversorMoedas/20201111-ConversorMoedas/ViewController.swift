//
//  ViewController.swift
//  20201111-ConversorMoedas
//
//  Created by Daniel Nascimento on 11/11/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var textFieldValor: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    var baseValue: Double = 1
    var currencyValue: Double = 1
    var selectedCurrency: ECurrencyType = .BRL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButtonSelect(_ sender: Any) {
        actionSheetSelectCurrency()
    }
    @IBAction func actionButtonConverter(_ sender: Any) {
        Converter(type: selectedCurrency)
        textFieldValor.resignFirstResponder()
    }
    
    
    
    func Converter(type: ECurrencyType) {
        if type == ECurrencyType.USD {
            AF.request("https://api.exchangeratesapi.io/latest?symbols=USD,BRL&base=USD").responseJSON(completionHandler: { response in
                if let dictionary = response.value as? [String: Any] {
                    if let rates = dictionary["rates"] as? [String: Double] {
                        self.currencyValue = rates["BRL"]!
                        var currentValue = Double(self.textFieldValor.text!)
                        currentValue! *= self.currencyValue
                        self.labelResult.text = String(format: "%.02f", currentValue!)
                    }
                }
            })
        }
        if type == ECurrencyType.BRL {
            AF.request("https://api.exchangeratesapi.io/latest?symbols=USD,BRL&base=BRL").responseJSON(completionHandler: { response in
                if let dictionary = response.value as? [String: Any] {
                    if let rates = dictionary["rates"] as? [String: Double] {
                        self.currencyValue = rates["USD"]!
                        var currentValue = Double(self.textFieldValor.text!)
                        currentValue! *= self.currencyValue
                        self.labelResult.text = String(format: "%.02f", currentValue!)
                    }
                }
            })
        }
    }
    
    func actionSheetSelectCurrency() {
        let alert = UIAlertController(title: "Atenção",
                                      message: "Selecione a opção de conversão",
                                      preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: "De BRL - Real para USD - Dólar", style: .default, handler: { (action) in
            self.selectedCurrency = ECurrencyType.BRL
        }))
        
        alert.addAction(UIAlertAction(title: "De USD - Dólar para BRL - Real", style: .default, handler: { (action) in
            self.selectedCurrency = ECurrencyType.USD
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { (action) in
            print("Apertou Cancelar")
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
}

