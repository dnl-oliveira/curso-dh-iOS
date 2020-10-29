//
//  EpisodiosDetailTableViewCell.swift
//  Exercise-AutoLayout
//
//  Created by Daniel Oliveira on 10/23/20.
//

import UIKit

class EpisodiosDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageEpisodio: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelAvaliacao: UILabel!
    @IBOutlet weak var labelEstrelas: UILabel!
    @IBOutlet weak var labelSinapse: UILabel!
    @IBAction func buttonDownload(_sender: Any){
    }

    func setup(episodio: Episodio){
        imageEpisodio.image = UIImage(named: episodio.imageEpisodio)
        labelTitle.text = episodio.titulo
        labelAvaliacao.text = episodio.avaliacao
        labelEstrelas.text = episodio.estrelas
        labelSinapse.text = episodio.sinapse
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
