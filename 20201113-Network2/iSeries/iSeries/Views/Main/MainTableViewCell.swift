//
//  MainTableViewCell.swift
//  iSeries
//
//  Created by Daniel Nascimento on 13/11/20.
//

import UIKit
import Kingfisher

class MainTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var showImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(show: Show) {
        titleLabel.text = show.name
        subtitleLabel.text = "Nota: \(show.rating.average ?? 0)"
        if let apiShowImage = show.image.medium,
           let url = URL(string: show.image.medium) {
            showImage.kf.setImage(with: url)
        }
    }

}
