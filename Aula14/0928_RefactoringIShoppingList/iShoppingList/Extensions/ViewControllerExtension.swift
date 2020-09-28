//
//  ViewControllerExtension.swift
//  iShoppingList
//
//  Created by Daniel Nascimento on 28/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import Foundation
import UIKit
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let prod = productManager.getProductByIndex(index: indexPath.row)
        isEdit = true
        editIndex = indexPath.row
        labelNameProduct.text = prod.name
        textFieldNameProduct.text = prod.name
        labelNameProduct.isHidden = false
        textFieldNameProduct.isHidden = true
        textFieldQuantity.text = String(prod.quantity)
        
    }
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        productManager.removeProductByIndex(index: indexPath.row)
        tableViewList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productManager.getProductList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as! MyCustomCellTableViewCell
        cell.setup(product: productManager.getProductByIndex(index: indexPath.row))
        return cell
    }
    
    
}

