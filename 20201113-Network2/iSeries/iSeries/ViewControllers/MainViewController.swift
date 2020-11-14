//
//  ViewController.swift
//  iSeries
//
//  Created by Daniel Nascimento on 13/11/20.
//

import UIKit
import Alamofire

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayShows = [Show]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        loadShows()
    }
    
    func loadShows() {
        AF.request("https://api.tvmaze.com/shows?page=1").responseJSON  { response in
            if let arrayDictionary = response.value as? [[String: Any]] {
                var arrayShows = [Show]()
                for dictionary in arrayDictionary {
                    let loadedData = Show(fromDictionary: dictionary)
                    arrayShows.append(loadedData)
                }
                DispatchQueue.main.async {
                    self.saveShows(arrayShows: arrayShows)
                }
            }
        }
    }
    
    func saveShows(arrayShows: [Show]) {
        self.arrayShows = arrayShows
        tableView.reloadData()
    }
}
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let showSeason = UIStoryboard(name: "Season", bundle: nil).instantiateInitialViewController() as? SeasonViewController {
            showSeason.show = arrayShows[indexPath.row]
            navigationController?.pushViewController(showSeason, animated: true)
        }
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell") as! MainTableViewCell
        cell.setup(show: arrayShows[indexPath.row])
        return cell
    }
    
    
}
