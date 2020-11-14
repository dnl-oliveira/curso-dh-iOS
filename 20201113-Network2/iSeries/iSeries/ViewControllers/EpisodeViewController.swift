//
//  EpisodeViewController.swift
//  iSeries
//
//  Created by Daniel Nascimento on 13/11/20.
//

import UIKit
import Alamofire

class EpisodeViewController: UIViewController {

    var season: Season?
    var arrayEpisodes = [Episode]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.title = season?.name
        loadEpisodes()

        // Do any additional setup after loading the view.
    }

    func saveEpisodes(arrayEpisodes: [Episode]) {
        self.arrayEpisodes = arrayEpisodes
        tableView.reloadData()
    }
    
    func loadEpisodes() {
        if let apiSeason = self.season {
            AF.request("http://api.tvmaze.com/shows/\(apiSeason.id!)/episodes").responseJSON  { response in
                print(response)
                if let arrayDictionary = response.value as? [[String: Any]] {
                    var arrayEpisodes = [Episode]()
                    for dictionary in arrayDictionary {
                        let loadedData = Episode(fromDictionary: dictionary)
                        arrayEpisodes.append(loadedData)
                    }
                    print(arrayEpisodes)
                    DispatchQueue.main.async {
                        self.saveEpisodes(arrayEpisodes: arrayEpisodes)
                    }
                }
            }
        }
    }

}
extension EpisodeViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let season = UIStoryboard(name: "Season", bundle: nil).instantiateInitialViewController() as? SeasonViewController {
//            season. = arraySeasons[indexPath.row]
//            navigationController?.pushViewController(showSeason, animated: true)
//        }
//    }
}

extension EpisodeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayEpisodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EpisodeTableViewCell") as! EpisodeTableViewCell
        cell.setup(episode: arrayEpisodes[indexPath.row])
        return cell
    }
    
    
}
