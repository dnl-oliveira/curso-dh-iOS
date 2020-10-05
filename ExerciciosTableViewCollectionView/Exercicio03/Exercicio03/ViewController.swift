//
//  ViewController.swift
//  Exercicio03
//
//  Created by Daniel Nascimento on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var carArray = [Car]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view..
        collectionView.delegate = self
        collectionView.dataSource = self

        carArray.append(Car(name: "Carro1", image: "1" ))
        carArray.append(Car(name: "Carro2", image: "2" ))
        carArray.append(Car(name: "Carro3", image: "3" ))
        carArray.append(Car(name: "Carro4", image: "1" ))
        carArray.append(Car(name: "Carro1", image: "2" ))
        carArray.append(Car(name: "Carro2", image: "3" ))
        carArray.append(Car(name: "Carro3", image: "1" ))
        carArray.append(Car(name: "Carro4", image: "2" ))
        carArray.append(Car(name: "Carro1", image: "3" ))
        carArray.append(Car(name: "Carro2", image: "1" ))
        carArray.append(Car(name: "Carro3", image: "2" ))
        carArray.append(Car(name: "Carro4", image: "3" ))
    }
}

extension ViewController: UICollectionViewDelegate{

}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCollectionCell", for: indexPath) as! CarViewCell

        cell.setup(car: carArray[indexPath.row])
        return cell

    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as! CarDetailViewController
        viewController.car = carArray[indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
        
    }

}

