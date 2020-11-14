//
//  EpisodeTableViewCell.swift
//  iSeries
//
//  Created by Daniel Nascimento on 13/11/20.
//

import UIKit

class EpisodeTableViewCell: UITableViewCell {

    @IBOutlet weak var labelEpisode: UILabel!
    @IBOutlet weak var textViewSumary: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(episode: Episode) {
        labelEpisode.text = "\(episode.number ?? 0) - \(episode.name ?? "")"
        textViewSumary.attributedText = episode.summary.htmlToAttributedString
        
    }
    

}
extension String {
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}
