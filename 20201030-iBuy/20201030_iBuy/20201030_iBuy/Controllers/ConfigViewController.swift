//
//  ConfigViewController.swift
//  20201030_iBuy
//
//  Created by Daniel Nascimento on 31/10/20.
//

import UIKit

class ConfigViewController: UIViewController {

    @IBOutlet weak var optionsTableView: UITableView!
    var arrayOptions = [ConfigurationOptions]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let config = ConfigurationOptions(optionName: "")
        arrayOptions = config.setupOptions()
        optionsTableView.delegate = self
        optionsTableView.dataSource = self
    }
}
extension ConfigViewController : UITableViewDelegate {
    
}

extension ConfigViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConfigTableViewCell", for: indexPath) as! ConfigTableViewCell
        cell.setup(config: arrayOptions[indexPath.row])
        return cell
    }
    
    
}
