//
//  myCollectionViewCell.swift
//  Exercicio04
//
//  Created by Daniel Nascimento on 05/10/20.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    func setup (name: String){
        nameLabel.text = name
    }
}
