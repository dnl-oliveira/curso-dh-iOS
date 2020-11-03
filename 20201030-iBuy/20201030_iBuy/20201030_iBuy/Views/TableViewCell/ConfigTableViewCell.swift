//
//  ConfigTableViewCell.swift
//  20201030_iBuy
//
//  Created by Daniel Nascimento on 31/10/20.
//

import UIKit

class ConfigTableViewCell: UITableViewCell {

    @IBOutlet weak var labelOption: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(config: ConfigurationOptions) {
        labelOption.text = config.optionName
    }

}
