//
//  ViewController.swift
//  Exercicio02
//
//  Created by Daniel Nascimento on 04/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalTableView: UITableView!
    var animais = [Animal]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animalTableView.delegate = self
        animalTableView.dataSource = self
        animais.append(Animal(name: "Animal1", breed: "Raça1", weight: 2.1, specie: "Espécie1"))
        animais.append(Animal(name: "Animal2", breed: "Raça2", weight: 50, specie: "Espécie2"))
        animais.append(Animal(name: "Animal3", breed: "Raça3", weight: 22.3, specie: "Espécie3"))
        animais.append(Animal(name: "Animal4", breed: "Raça4", weight: 10.5, specie: "Espécie4"))
        animais.append(Animal(name: "Animal5", breed: "Raça5", weight: 2, specie: "Espécie5"))
        animais.append(Animal(name: "Animal6", breed: "Raça6", weight: 2.3, specie: "Espécie6"))
        animais.append(Animal(name: "Animal7", breed: "Raça7", weight: 5, specie: "Espécie7"))
        animais.append(Animal(name: "Animal8", breed: "Raça8", weight: 23.4, specie: "Espécie8"))
        animais.append(Animal(name: "Animal9", breed: "Raça9", weight: 12.3, specie: "Espécie9"))
        animais.append(Animal(name: "Animal10", breed: "Raça10", weight: 10.6, specie: "Espécie10"))
    }

}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = UIStoryboard(name: "Detail", bundle: nil).instantiateInitialViewController() as! DetailViewController
        detail.pet = animais[indexPath.row]
        present(detail, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animais.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as! CustomTableViewCell

        cell.setup(animal: animais[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }


}
