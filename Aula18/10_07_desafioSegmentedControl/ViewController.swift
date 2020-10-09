//
//  ViewController.swift
//  10_07_desafioSegmentedControl
//
//  Created by Daniel Oliveira on 07/10/20.
//  Copyright © 2020 Daniel Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var array = [Person]()
    
    @IBOutlet weak var segmentedControlRole: UISegmentedControl!
    @IBAction func changedSegmentedControlRole(_ sender: Any) {
        print (segmentedControlRole.selectedSegmentIndex)
        
        switch segmentedControlRole.selectedSegmentIndex {
        case Role.programmer:
            array = arrayProgrammers
            tableViewList.reloadData()
        case Role.person:
            array = arrayPeople
            tableViewList.reloadData()
        default:
            break
        }
        
    }
    @IBOutlet weak var tableViewList: UITableView!
    
    var arrayProgrammers = [Person]()
    var arrayPeople = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        arrayProgrammers.append(Person(name: "João", image: "programador.jpg", role: Role.programmer))
        arrayProgrammers.append(Person(name: "Maria", image: "programador.jpg", role: Role.programmer))
        arrayProgrammers.append(Person(name: "José", image: "programador.jpg", role: Role.programmer))
        arrayProgrammers.append(Person(name: "Carlos", image: "programador.jpg", role: Role.programmer))
        arrayProgrammers.append(Person(name: "Pedro", image: "programador.jpg", role: Role.programmer))
        
        arrayPeople.append(Person(name: "Raphael", image: "person.jpg", role: Role.person))
        arrayPeople.append(Person(name: "Taize", image: "person.jpg", role: Role.person))
        arrayPeople.append(Person(name: "Gustavo", image: "person.jpg", role: Role.person))
        arrayPeople.append(Person(name: "Daniel", image: "person.jpg", role: Role.person))
        arrayPeople.append(Person(name: "Narlei", image: "person.jpg", role: Role.person))
        
        array = arrayProgrammers
        
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewList.deselectRow(at: indexPath, animated: true)
        
        let type = array[indexPath.row]

        if let viewControllerDetail = UIStoryboard(name: "Detail", bundle: nil).instantiateInitialViewController() as? ViewControllerDetail {
            
            viewControllerDetail.type = type
            switch type.role {
            case Role.programmer:
                viewControllerDetail.title = "Programador"
                navigationController?.pushViewController(viewControllerDetail, animated: true)
            case Role.person:
                viewControllerDetail.title = "Pessoa"
                present(viewControllerDetail, animated: true, completion: nil)
            default:
                break
            }

        }
        
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        array.remove(at: indexPath.row)
        let person = array[indexPath.row]
        if person.role == Role.programmer {
            arrayProgrammers.remove(at: indexPath.row)
        } else {
            arrayPeople.remove(at: indexPath.row)
        }
        tableViewList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewList.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomCell
        cell.setup(person: array[indexPath.row])
        
        return cell
    }
    
    
    
}
