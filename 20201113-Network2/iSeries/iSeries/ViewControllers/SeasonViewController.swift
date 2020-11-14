//
//  SeasonViewController.swift
//  iSeries
//
//  Created by Daniel Nascimento on 13/11/20.
//

import UIKit
import Kingfisher
import Alamofire

class SeasonViewController: UIViewController {
    var show: Show?
    var arraySeasons = [Season]()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var showImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let apiShow = show,
           let url = URL(string: apiShow.image.medium) {
            showImage.kf.setImage(with: url)
            self.title = apiShow.name
        }
        tableView.delegate = self
        tableView.dataSource = self
        loadSeasons()
    }
    
    func saveSeasons(arraySeasons: [Season]) {
        self.arraySeasons = arraySeasons
        tableView.reloadData()
    }
    
    func loadSeasons() {
        if let apiShow = self.show {
            AF.request("http://api.tvmaze.com/shows/\(apiShow.id!)/seasons").responseJSON  { response in
                print(response)
                if let arrayDictionary = response.value as? [[String: Any]] {
                    var arraySeasons = [Season]()
                    for dictionary in arrayDictionary {
                        let loadedData = Season(fromDictionary: dictionary)
                        arraySeasons.append(loadedData)
                    }
                    print(arraySeasons)
                    DispatchQueue.main.async {
                        self.saveSeasons(arraySeasons: arraySeasons)
                    }
                }
            }
        }
    }
}
extension SeasonViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let episode = UIStoryboard(name: "Episode", bundle: nil).instantiateInitialViewController() as? EpisodeViewController {
            episode.season = arraySeasons[indexPath.row]
            navigationController?.pushViewController(episode, animated: true)
        }
    }
}

extension SeasonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraySeasons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeasonTableViewCell") as! SeasonTableViewCell
        cell.setup(season: arraySeasons[indexPath.row])
        return cell
    }
    
    
}
