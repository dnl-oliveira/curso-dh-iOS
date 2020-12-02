//
//  ViewController.swift
//  20201202-BancoDeDados
//
//  Created by Daniel Nascimento on 02/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    var brands = [Brand]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.delegate = self
        myTableView.dataSource = self
        createBrand()
        if let array = Brand.getAllDataWhere("name IS NOT NULL") as? [Brand] {
            brands = array
        }
        else {
            createBrand()
        }
        
//        for i in 0...1000 {
//            let person = Person()
//            person.name = "Pessoa \(i)"
//            person.identifier = person.getUniqueKey()
//            person.saveData()
//
//            let order = Order()
//            order.date = "10-10-2020"
//            order.value = "1233"
//            order.personID = person.identifier
//            order.saveData()
//        }
        
//        print("Terminou")
//
//
//        if let personResult = Person.getObjectWithId("12938182390") as? Person {
//            print(personResult.name)
//        }
        
        
        
    }
    
    func createBrand() -> Void {
        let brand1 = Brand()
        brand1.name = "Adidas"
        brand1.favorite = "1"
        brand1.identifier = brand1.getUniqueKey()
        brand1.saveData()
        
        let brand2 = Brand()
        brand2.name = "Puma"
        brand2.favorite = "0"
        brand2.identifier = brand2.getUniqueKey()
        brand2.saveData()
        
        let brand3 = Brand()
        brand3.name = "Nike"
        brand3.favorite = "0"
        brand3.identifier = brand3.getUniqueKey()
        brand3.saveData()
        
        brands.append(brand1)
        brands.append(brand2)
        brands.append(brand3)
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
        if let oldFavorite = Brand.getAllDataWhere("favorite = '1'") as? [Brand] {
            oldFavorite[0].favorite = "0"
            oldFavorite[0].saveData()
        }
        if let newFavorite = Brand.getObjectWithId(brands[indexPath.row].identifier) as? Brand {
            newFavorite.favorite = "1"
            newFavorite.saveData()
        }
        if let array = Brand.getAllDataWhere("name IS NOT NULL") as? [Brand] {
            brands = array
        }
        tableView.reloadData()
        
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brands.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! myTableViewCell

        cell.setup(brand: brands[indexPath.row])

        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if let oldFavorite = Brand.getAllDataWhere("favorite = '1'") as? Brand {
            oldFavorite.favorite = "0"
            oldFavorite.saveData()
        }
        if let newFavorite = Brand.getObjectWithId(brands[indexPath.row].identifier) as? Brand {
            newFavorite.favorite = "1"
            newFavorite.saveData()
        }
        myTableView.reloadData()
    }
}

