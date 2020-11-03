//
//  Section.swift
//  10_30_EX_iBuy
//
//  Created by Fernanda Fernandes on 30/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import Foundation

class Section {
    var sectionName: String
    var sectionItems: [Items]
    
    init(sectionName: String, sectionItems: [Items]) {
        self.sectionName = sectionName
        self.sectionItems = sectionItems
    }

    
}
