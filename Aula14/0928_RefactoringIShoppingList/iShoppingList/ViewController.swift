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
    @IBOutlet weak var buttonDelete: UIButton!
    let productManager = ProductManager()
    var isEdit: Bool = false
    var editIndex: Int? = nil
    
    @IBOutlet weak var tableViewList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonDeleteHidden(isHidden: false)
        buttonDelete.isHidden = true
        tableViewList.delegate = self
        tableViewList.dataSource = self
    }
    
    
    @IBAction func actionButtonSave(_ sender: Any) {
        if verifyDataComplete() {
            if !productManager.productExists(name: textFieldNameProduct.text!) {
                let newProduct = Product(name: textFieldNameProduct.text!, quantity: Int(textFieldQuantity.text!)!)
                productManager.addProduct(product: newProduct)
                tableViewList.reloadData()
                cleanFields()
            }
            else {
                if isEdit && editIndex != nil {
                    productManager.updateProductByIndex(index: editIndex!, quantity: Int(textFieldQuantity.text!)!)
                }
                tableViewList.reloadData()
                cleanFields()
            }
        }
    }
    
    @IBAction func actionButtonClean(_ sender: Any) {
        cleanFields()
    }
    
    private func cleanFields() {
        textFieldQuantity.text = ""
        textFieldNameProduct.text = ""
        textFieldNameProduct.isHidden = false
        labelNameProduct.text = ""
        labelNameProduct.isHidden = true
        buttonSave.setTitle("Salvar", for: UIControl.State.normal)
        
    }
    
    private func verifyDataComplete() -> Bool {
        if isEdit {
            return true
        }
        if textFieldNameProduct.isEmpty() {
            return false
        }
        if textFieldQuantity.isEmpty() {
            return false
        }
        return true
    }
    
    private func buttonDeleteHidden(isHidden: Bool) {
        buttonDelete.isHidden = isHidden
    }
    
}

