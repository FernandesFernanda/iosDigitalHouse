//
//  SeriesTableViewCell.swift
//  10_23_EX_AutoLayout
//
//  Created by Fernanda Fernandes on 23/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class SeriesTableViewCell: UITableViewCell {

    @IBOutlet weak var seriesImage: UIImageView!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    func setup (series: Series) {
        seriesImage.image = UIImage(named: "serie.png")
        episodeLabel.text = series.episode
        ratingLabel.text = series.rating
        reviewLabel.text = series.review
        synopsisLabel.text = series.synopsis
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
