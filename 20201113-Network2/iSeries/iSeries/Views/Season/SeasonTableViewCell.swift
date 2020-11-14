//
//  SeasonTableViewCell.swift
//  iSeries
//
//  Created by Daniel Nascimento on 13/11/20.
//

import UIKit

class SeasonTableViewCell: UITableViewCell {

    @IBOutlet weak var labelSeason: UILabel!
    @IBOutlet weak var labelEpisodes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(season: Season) {
        labelSeason.text = "Temporada \(season.number ?? 0)"
        labelEpisodes.text = "Episódios: \(season.episodeOrder ?? 0)"        
    }

}
