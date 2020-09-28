//
//  ViewController.swift
//  0928_Desafio_TableView
//
//  Created by Daniel Nascimento on 28/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewList: UITableView!
    var devs = [Developer]()
    @IBOutlet weak var labelSelected: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewList.delegate = self
        tableViewList.dataSource = self
        devs.append(Developer(name: "Daniel Oliveira", image: "1.jpg", email: "daniel@gmail.com"))
        devs.append(Developer(name: "Patricia Fonseca", image: "2.jpeg", email: "patricia@gmail.com"))
        devs.append(Developer(name: "Joao da Silva", image: "3.jpg", email: "joao@gmail.com"))
        devs.append(Developer(name: "Jose da Costa", image: "4.jpg", email: "jose@gmail.com"))
        devs.append(Developer(name: "Maria Araujo", image: "5.jpeg", email: "maria@gmail.com"))
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dev = devs[indexPath.row]
        labelSelected.text = "Dev: \(dev.name) \nEmail: \(dev.email)"
        //tableView.deselectRow(at: indexPath, animated: true)
        
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        devs.remove(at: indexPath.row)
        labelSelected.text = "Dev deletado"
        tableViewList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return devs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! customCellTableViewCell
        cell.setup(dev: devs[indexPath.row])
        return cell
    }
    
    
}

