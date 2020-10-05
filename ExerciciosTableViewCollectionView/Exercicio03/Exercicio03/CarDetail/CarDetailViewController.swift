//
//  CarDetailViewController.swift
//  Exercicio03
//
//  Created by Daniel Oliveira on 30/09/20.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var imageDetailCar: UIImageView!
    var car: Car?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let car = car{
            title = car.name
            imageDetailCar.image = UIImage(named: car.image)
        }
    }

}
