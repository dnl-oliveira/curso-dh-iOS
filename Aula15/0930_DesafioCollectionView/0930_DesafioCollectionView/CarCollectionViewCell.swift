//
//  CarCollectionViewCell.swift
//  0930_DesafioCollectionView
//
//  Created by Daniel Nascimento on 01/10/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelCarName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func setup(car: Car) {
        labelCarName.text = car.name
        imageView.image = UIImage(named: car.image)
    }
}
