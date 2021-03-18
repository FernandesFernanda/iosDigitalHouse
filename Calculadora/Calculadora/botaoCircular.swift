//
//  botaoCircular.swift
//  Calculadora
//
//  Created by Fernanda Fernandes on 05/09/20.
//  Copyright © 2020 Rafael Jose. All rights reserved.
//

import UIKit

@IBDesignable
class botaoCircular: UIButton {

    @IBInspectable var botaoCircular: Bool = false {
        didSet {
            if botaoCircular {
                layer.cornerRadius = frame.height / 2
            }
        }
    }

    override func prepareForInterfaceBuilder() {
        if botaoCircular {
                       layer.cornerRadius = frame.height / 2
                   }
    }

}
