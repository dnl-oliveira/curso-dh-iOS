//
//  myTableViewCell.swift
//  Exercicio01
//
//  Created by Daniel Nascimento on 01/10/20.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelFunc: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(people: People) {
        labelName.text = people.name
        labelFunc.text = people.cargo
        labelEmail.text = people.email
    }



}
