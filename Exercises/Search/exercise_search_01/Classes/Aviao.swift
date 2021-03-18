//
//  Aviao.swift
//  exercise_search_01
//
//  Created by Fernanda Fernandes on 18/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import Foundation

class Aviao {
    
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
        
    }
    
    
}

extension Aviao: SearchProtocols {
   
    func searchProperties(text: String) -> String {
       
        let textSearch = text.lowercased()
        if self.modelo.lowercased().contains(textSearch) || self.cidade.lowercased().contains(textSearch) {
            return "Avião: \(self.modelo) - \(self.cidade) "
        }
        
        return ""
        
        
    }
    
    
}

