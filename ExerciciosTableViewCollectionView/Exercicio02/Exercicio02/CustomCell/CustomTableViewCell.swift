//
//  CustomTableViewCell.swift
//  Exercicio02
//
//  Created by Daniel Nascimento on 04/10/20.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSpecie: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(animal: Animal){
        labelName.text = animal.name
        labelBreed.text = animal.breed
        labelSpecie.text = animal.specie
        labelWeight.text = String(animal.weight)
    }

}
