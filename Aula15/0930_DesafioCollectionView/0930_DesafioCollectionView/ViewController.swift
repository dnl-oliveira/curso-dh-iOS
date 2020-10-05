//
//  ViewController.swift
//  0930_DesafioCollectionView
//
//  Created by Daniel Nascimento on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewCar: UICollectionView!
    var arrayCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewCar.delegate = self
        collectionViewCar.dataSource = self
        
        arrayCars.append(Car(name: "Carro 1", image: "1.jpg"))
        arrayCars.append(Car(name: "Carro 2", image: "2.jpg"))
        arrayCars.append(Car(name: "Carro 3", image: "3.jpeg"))
        arrayCars.append(Car(name: "Carro 4", image: "4.jpg"))
        arrayCars.append(Car(name: "Carro 5", image: "5.jpeg"))
        
    }
}
extension ViewController : UICollectionViewDelegate {
    
}

extension ViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        
        cell.setup(car: arrayCars[indexPath.row])
        
        return cell
    }
}



