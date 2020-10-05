//
//  ViewController.swift
//  Exercicio01
//
//  Created by Daniel Nascimento on 01/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var peoples = [People]()
    @IBOutlet weak var tableViewPeoples: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let p = People(name: "Teste", cargo: "Teste", email: "teste")
        peoples = p.createPeoples()
        tableViewPeoples.delegate = self
        tableViewPeoples.dataSource = self
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let details = UIStoryboard(name: "Details", bundle: nil).instantiateInitialViewController() as? DetailsViewController {
            details.person = peoples[indexPath.row]
            present(details, animated: true, completion: nil)}
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peoples.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewPeoples.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! myTableViewCell
        cell.setup(people: peoples[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
    
}
