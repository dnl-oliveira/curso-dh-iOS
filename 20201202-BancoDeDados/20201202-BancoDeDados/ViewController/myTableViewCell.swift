//
//  myTableViewCell.swift
//  20201202-BancoDeDados
//
//  Created by Daniel Nascimento on 02/12/20.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var buttonFavorite: UIButton!
    @IBOutlet weak var labelName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(brand: Brand) {
        labelName.text = brand.name
        buttonFavorite.isHidden = !(brand.favorite == "1")
    }

}
