//
//  myCustomCell.swift
//  10_07_desafioSegmentedControl
//
//  Created by Daniel Oliveira on 07/10/20.
//  Copyright © 2020 Daniel Oliveira. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    func setup(person: Person) {
        labelName?.text = ""
        labelName?.text = person.name
        myImageView?.image = UIImage(named: person.image)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
