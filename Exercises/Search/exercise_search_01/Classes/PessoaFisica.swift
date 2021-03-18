//
//  PessoaFisica.swift
//  exercise_search_01
//
//  Created by Fernanda Fernandes on 18/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import Foundation

class PessoaFisica: Pessoa {
    
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
    }
}
extension PessoaFisica: SearchProtocols {
     
    func searchProperties(text: String) -> String {
       
        let textSearch = text.lowercased()
        if self.cpf.lowercased().contains(textSearch) || self.nome.lowercased().contains(textSearch) {
            return "PessoaFisica: \(self.nome) - \(self.cpf) "
        }
        
        return ""
    }

}
