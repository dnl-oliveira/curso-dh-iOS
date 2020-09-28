//
//  ProductManager.swift
//  iShoppingList
//
//  Created by Daniel Nascimento on 16/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import Foundation

class ProductManager {
    private var productList: [Product] = []
    
    func addProduct (product: Product) {
        productList.append(product)
    }
    
    func findProduct (name: String) -> Product? {
        if productList.count == 0 {
            return nil
        } else {
            for item in productList {
                if item.name.removeSpecialCharacters().lowercased() == name.removeSpecialCharacters().lowercased() {
                    return item
                }
            }
            return nil
        }
    }
    
    func productExists(name: String) -> Bool {
        if findProduct(name: name) != nil {
            return true
        }
        return false
    }
    
    func removeProduct (product: Product) {
        var idx: Int = 0
        for item in productList {
            if item.name.removeSpecialCharacters().lowercased() == product.name.removeSpecialCharacters().lowercased() {
                productList.remove(at: idx)
                break
            }
            idx += 1
        }
    }
    
    func upgradeProduct(product: Product) {
        var idx: Int = 0
        for item in productList {
            if item.name.removeSpecialCharacters().lowercased() == product.name.removeSpecialCharacters().lowercased() {
                productList[idx].quantity = product.quantity
                break
            }
            idx += 1
        }
    }
    
    func mountProductList() -> String {
        var listString: String = ""
        for item in productList {
            listString.append("\(item.name) - Qtd: \(item.quantity) \n")
        }
        return listString
    }
    
    func getProductList() -> [Product] {
        return productList
    }
    
    func getProductByIndex(index: Int) -> Product {
        return productList[index]
    }
    
    func removeProductByIndex(index: Int) {
        productList.remove(at: index)
    }
    
    func updateProductByIndex(index: Int, quantity: Int) {
        productList[index].quantity = quantity
    }
}
