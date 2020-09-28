//
//  ViewController.swift
//  0925_Carros
//
//  Created by Daniel Nascimento on 27/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelCar: UILabel!
    @IBOutlet weak var tableViewListCars: UITableView!
    var arrayCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewListCars.delegate = self
        tableViewListCars.dataSource = self
        tableViewListCars.rowHeight = UITableView.automaticDimension
        tableViewListCars.estimatedRowHeight = 300
        
        arrayCars.append(Car(brand: "Volkswagen", image: UIImage(named: "gol.jpeg")!))
        arrayCars.append(Car(brand: "Hyundai", image: UIImage(named: "hb20.jpeg")!))
        arrayCars.append(Car(brand: "Ford", image: UIImage(named: "ka.jpeg")!))
        arrayCars.append(Car(brand: "Renaut", image: UIImage(named: "kwid.jpg")!))
        arrayCars.append(Car(brand: "GM Chevrolet", image: UIImage(named: "onix.jpg")!))
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let car = arrayCars[indexPath.row]
        
        labelCar.text = "Selecionou \(car.brand)"
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.imageView?.image = arrayCars[indexPath.row].image
        cell.textLabel?.text = arrayCars[indexPath.row].brand
        
        return cell
    }
}

