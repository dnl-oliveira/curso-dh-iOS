//
//  ViewController.swift
//  Exercise-AutoLayout
//
//  Created by Daniel Oliveira on 10/23/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    
    var arrayEpisodios = [Episodio]()
    
    @IBAction func buttonConfirmar(_sender: Any){
        
    }
    @IBAction func buttonExcluir(_sender: Any){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func configureArray(){
        arrayEpisodios.append(Episodio(titulo: "Resident Evil", avaliacao: "(415 avaliações)", estrelas: "⭐️⭐️⭐️", imageEpisodio: "miranha", sinapse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"))
        arrayEpisodios.append(Episodio(titulo: "Vingadores", avaliacao: "(415 avaliações)", estrelas: "⭐️⭐️⭐️⭐️", imageEpisodio: "miranha", sinapse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."))
        arrayEpisodios.append(Episodio(titulo: "O homem do castelo alto", avaliacao: "(415 avaliações)", estrelas: "⭐️⭐️⭐️⭐️⭐️", imageEpisodio: "miranha", sinapse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"))
        arrayEpisodios.append(Episodio(titulo: "Spider Man de volta para casa", avaliacao: "(415 avaliações)", estrelas: "⭐️⭐️⭐️", imageEpisodio: "miranha", sinapse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"))
        arrayEpisodios.append(Episodio(titulo: "Cobra Kai", avaliacao: "(415 avaliações)", estrelas: "⭐️⭐️⭐️⭐️", imageEpisodio: "miranha", sinapse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"))
        
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayEpisodios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EpisodiosDetailTableViewCell", for: indexPath) as? EpisodiosDetailTableViewCell
        else { return EpisodiosDetailTableViewCell()}
        
        let object = arrayEpisodios[indexPath.row]
        cell.setup(episodio: object)
        
        return cell
    }
    
    
}
