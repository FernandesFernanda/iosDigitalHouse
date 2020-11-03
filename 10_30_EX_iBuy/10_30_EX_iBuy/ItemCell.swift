//
//  ItemCell.swift
//  10_30_EX_iBuy
//
//  Created by Fernanda Fernandes on 30/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var labelItemName: UILabel!
    
    func setup(items: Items) {
        labelItemName.text = items.nameItem
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
