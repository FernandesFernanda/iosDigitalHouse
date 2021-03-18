//
//  ListPeopleTableViewCell.swift
//  ExSegmentedControl
//
//  Created by Fernanda Fernandes on 07/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ListPeopleTableViewCell: UITableViewCell {

    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(people: People) {
        
        labelName.text = people.nome
        imageUser.image = UIImage(named: people.image)
        
    }

}
