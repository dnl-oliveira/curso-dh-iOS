//
//  ViewController.swift
//  ExecTextFieldDelegate
//
//  Created by Daniel Nascimento on 14/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import UIKit

class Usuario {
    var email: String
    var senha: String
    var arrayUsuario = [Usuario]()
    
    init(email: String, senha: String) {
        self.email = email
        self.senha = senha
    }
    
    func adicionarUsuario(usuario: Usuario){
        arrayUsuario.append(usuario)
    }
    
    func verificarUsuario(usuario: Usuario) -> Bool {
        for i in arrayUsuario {
            if i.email == usuario.email {
                return true
            }
        }
        return false
    }
    
}

class ViewController: UIViewController {
    
    
    @IBOutlet var viewMain: UIView!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    
    
    @IBAction func buttonCadastrar(_ sender: Any) {
        var email = textFieldEmail.text!
        var senha = textFieldSenha.text!
        var usuario = Usuario(email: email, senha: senha)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }
    
    private func validarInformacoes() -> Bool {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            print("Falta o email")
            return false
        }
        if textFieldSenha.text == nil || textFieldSenha.text!.isEmpty {
            print("Falta o senha")
            return false
        }
        return true
    }
    var usuario = Usuario(email: "teste", senha: "12345")


}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        
        if textField == textFieldEmail {
            textFieldSenha.becomeFirstResponder()
        } else {
            if validarInformacoes() {
                textField.resignFirstResponder()
            }
            
        }
        
        return true
    }
}

