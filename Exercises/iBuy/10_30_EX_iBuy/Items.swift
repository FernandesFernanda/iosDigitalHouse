//
//  Itens.swift
//  10_30_EX_iBuy
//
//  Created by Fernanda Fernandes on 30/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import Foundation

protocol SearchableProtocol {
    func getTerm() -> String
}

class Items {
   var nameItem: String
   var isCompleted: Bool
    
    init(nameItem: String, isCompleted: Bool) {
        self.nameItem = nameItem
        self.isCompleted = isCompleted
    }

    
}

extension Items: SearchableProtocol {
    func getTerm() -> String {
        return "\(nameItem) \(isCompleted)".lowercased()
    }
}
