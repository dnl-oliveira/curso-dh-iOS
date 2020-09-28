//
//  customCellTableViewCell.swift
//  0928_Desafio_TableView
//
//  Created by Daniel Nascimento on 28/09/20.
//

import UIKit

class customCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageViewDevImage: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelEmail: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(dev: Developer) {
        imageViewDevImage.image = UIImage(named: dev.image)
        imageViewDevImage.layer.cornerRadius = 40
        labelName.text = dev.name
        labelEmail.text = dev.email
    }

}
