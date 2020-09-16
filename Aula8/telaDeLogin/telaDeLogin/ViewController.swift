//
//  ViewController.swift
//  telaDeLogin
//
//  Created by Daniel Nascimento on 15/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    @IBOutlet weak var buttonCadastrar: UIButton!
    @IBOutlet weak var buttonLogar: UIButton!
    var usuarioRepositorio = UsuarioRepositorio()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFieldSenha.delegate = self
        textFieldEmail.delegate = self
        desabilitarBotao()
    }
    
    @IBAction func actionButtonCadastrar(_ sender: Any) {
        if validarCampos() {
            let usuario = Usuario(email: textFieldEmail.text!, senha: textFieldSenha.text!)
            if !usuarioRepositorio.verificarSeUsuarioExiste(usuario: usuario) {
                usuarioRepositorio.cadastraUsuario(usuario: usuario)
                alterarCorDeFundo(cor: "verde")
                textFieldEmail.text = ""
                textFieldSenha.text = ""
                desabilitarBotao()
                exibirAlerta(title: "Cadastro", message: "Usuário cadastrado!")
            } else {
                alterarCorDeFundo(cor: "vermelho")
                exibirAlerta(title: "Cadastro", message: "Usuário ja possui cadastrado!")
            }
            
        }
    }
    
    
    @IBAction func actionButtonLogar(_ sender: Any) {
        if validarCampos(){
            let usuario = Usuario(email: textFieldEmail.text!, senha: textFieldSenha.text!)
            if usuarioRepositorio.autenticarUsuario(usuario: usuario) {
                alterarCorDeFundo(cor: "verde")
                textFieldEmail.text = ""
                textFieldSenha.text = ""
                desabilitarBotao()
                exibirAlerta(title: "Login", message: "Usuário logou com sucesso!")
            } else {
                alterarCorDeFundo(cor: "vermelho")
                exibirAlerta(title: "Login", message: "Usuário inválido!")
            }
        }
    }
    
    private func desabilitarBotao() {
        buttonCadastrar.isEnabled = false
        buttonCadastrar.backgroundColor = UIColor.lightGray
        buttonLogar.isEnabled = false
        buttonLogar.backgroundColor = UIColor.lightGray
    }
    
    
    private func habilitarBotao() {
        buttonCadastrar.isEnabled = true
        buttonCadastrar.backgroundColor = UIColor.systemBlue
        buttonLogar.isEnabled = true
        buttonLogar.backgroundColor = UIColor.black
    }
    
    private func validarCampos() -> Bool {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            exibirAlerta(title: "Atenção", message: "Favor digitar o e-mail")
            return false
        }
        
        if textFieldSenha.text == nil || textFieldSenha.text!.isEmpty {
            exibirAlerta(title: "Atenção", message: "Favor digitar a senha")
            return false
        }
        
        return true
    }
    
    private func exibirAlerta(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
            self.alterarCorDeFundo(cor: "branco")
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {

        }
        
    }
    
    private func alterarCorDeFundo(cor: String) {
        
        if cor == "vermelho" {
            self.view.backgroundColor = UIColor.red
        }
        else if cor == "verde" {
            self.view.backgroundColor = UIColor.green
        }
        else { // cor padrao
            self.view.backgroundColor = UIColor.white
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textFieldEmail.text! != "" && textFieldSenha.text! != "" {
            habilitarBotao()
        }
        
        if textField == textFieldEmail && textFieldEmail.text! != "" {
            textFieldSenha.becomeFirstResponder()
        }else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
