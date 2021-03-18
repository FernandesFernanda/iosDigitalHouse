//
//  PeopleCell.swift
//  StarsWarsPagination
//
//  Created by Fernanda Fernandes on 13/01/21.
//

import UIKit

class PeopleCell: UITableViewCell {

    @IBOutlet weak var labelPeople: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        labelPeople.text = ""
    }

    func setup(title: String) {
        labelPeople.text = title
    }

}
