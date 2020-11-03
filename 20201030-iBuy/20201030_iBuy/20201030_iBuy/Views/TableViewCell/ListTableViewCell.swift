//
//  ListTableViewCell.swift
//  20201030_iBuy
//
//  Created by Daniel Nascimento on 02/11/20.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var labelProduct: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(product: Product) {
        labelProduct?.text = product.name
    }

}
