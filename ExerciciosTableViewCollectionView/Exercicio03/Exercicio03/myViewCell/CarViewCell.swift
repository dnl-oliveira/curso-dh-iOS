//
//  CarViewCell.swift
//  Exercicio03
//
//  Created by Daniel Oliveira on 30/09/20.
//

import UIKit

class CarViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCar: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!

    func setup(car: Car){
        nameLabel.text = car.name
        imageCar.image = UIImage(named: car.image)
        imageCar.layer.cornerRadius = 50
    }
}
