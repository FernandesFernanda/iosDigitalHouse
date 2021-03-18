//
//  ConfigurationsCell.swift
//  10_30_EX_iBuy
//
//  Created by Fernanda Fernandes on 31/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ConfigurationsCell: UITableViewCell {

    @IBOutlet weak var ConfigurationsLabel: UILabel!
    
    func setupConfigurations(configurations: Configurations) {
        ConfigurationsLabel.text = configurations.nameLabel
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
