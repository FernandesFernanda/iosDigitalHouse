//
//  People.swift
//  ExSegmentedControl
//
//  Created by Fernanda Fernandes on 07/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import Foundation

enum PeopleType {
   case people
   case developer
}

class People {
    
    var nome: String
    var type: PeopleType
    var image: String
    
    init(nome: String, type: PeopleType, image: String) {
        self.nome = nome
        self.type = type
        self.image = image
    }
}

