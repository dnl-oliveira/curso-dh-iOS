//
//  MyCustomCellTableViewCell.swift
//  iShoppingList
//
//  Created by Daniel Nascimento on 28/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import UIKit

class MyCustomCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelProduto: UILabel!
    @IBOutlet weak var labelQuatidade: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(product: Product) {
        labelQuatidade.text = String(product.quantity)
        labelProduto.text = product.name        
    }

}
