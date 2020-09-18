//
//  ViewController.swift
//  iShoppingList
//
//  Created by Daniel Nascimento on 16/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldNameProduct: UITextField!
    @IBOutlet weak var labelNameProduct: UILabel!
    @IBOutlet weak var textFieldQuantity: UITextField!
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var labelListProducts: UILabel!
    @IBOutlet weak var buttonDelete: UIButton!
    let productManager = ProductManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonDeleteHidden(isHidden: false)
    }
    
    
    @IBAction func actionButtonSave(_ sender: Any) {
        if verifyDataComplete() {
            if !productManager.productExists(name: textFieldNameProduct.text!) {
                let newProduct = Product(name: textFieldNameProduct.text!, quantity: Int(textFieldQuantity.text!)!)
                productManager.addProduct(product: newProduct)
                upgradeList()
            }
            else {
                let existProduct: Product = productManager.findProduct(name: textFieldNameProduct.text!)!
                existProduct.quantity = Int(textFieldQuantity.text!)!
                productManager.upgradeProduct(product: existProduct)
                upgradeList()
            }
        }
    }
    
    @IBAction func actionButtonClean(_ sender: Any) {
        cleanFields()
    }
    
    private func cleanFields() {
        textFieldQuantity.text = ""
        textFieldNameProduct.text = ""
        labelNameProduct.text = ""
        buttonSave.setTitle("Salvar", for: UIControl.State.normal)
        
    }
    
    private func verifyDataComplete() -> Bool {
        if textFieldNameProduct.isEmpty() {
            return false
        }
        if textFieldQuantity.isEmpty() {
            return false
        }
        return true
    }
    
    private func upgradeList() {
        labelListProducts.text = productManager.mountProductList()
    }
    
    private func buttonDeleteHidden(isHidden: Bool) {
        buttonDelete.isHidden = isHidden
    }
    
}

