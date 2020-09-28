//
//  MyCustomCell.swift
//  0928_TableView_Expert
//
//  Created by Daniel Nascimento on 28/09/20.
//

import Foundation
import UIKit

class MyCustomCell: UITableViewCell {
    
    @IBOutlet weak var labelTitle: UILabel!
    
    func setup(title: String) {
        labelTitle.text = title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
