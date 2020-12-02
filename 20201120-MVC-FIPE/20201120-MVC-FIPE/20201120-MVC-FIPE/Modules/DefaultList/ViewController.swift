//
//  ViewController.swift
//  20201120-MVC-FIPE
//
//  Created by Daniel Nascimento on 20/11/20.
//

import UIKit

class ViewController: UIViewController {
    var controller: ControllerProtocol!
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

        title = controller.getViewTitle()

        loadData()
    }

    func loadData() {
        controller.loadData { success in
            self.tableView.reloadData()
        }
    }

    class func getView(controller: ControllerProtocol) -> ViewController {
        let viewDefault = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        viewDefault.controller = controller
        return viewDefault
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextController = controller.getNextController(index: indexPath.row)
        
        navigationController?.pushViewController(nextController, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.getNumberOfRows()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = controller.getTitleForCell(at: indexPath.row)

        return cell
    }
}
