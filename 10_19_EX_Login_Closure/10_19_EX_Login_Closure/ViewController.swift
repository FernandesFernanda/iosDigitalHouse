//
//  ViewController.swift
//  10_19_EX_Login_Closure
//
//  Created by Fernanda Fernandes on 19/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var textFieldLogin: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actionFazerLogin(_ sender: Any) {
       
    }
    
    @IBAction func actionFazerCadastro(_ sender: Any) {
        if let viewDetail = UIStoryboard(name: "Cadastro", bundle: nil).instantiateInitialViewController() as? CadastroViewController {
            viewDetail.setOnCompletion { (email, senha) in
                self.textFieldLogin.text = email
                self.textFieldSenha.text = senha
            }
        present(viewDetail, animated: true, completion: nil)
            
        }
    }
    
//    func getViewController() -> UIViewController {
//        let viewDetail = UIStoryboard(name: "CadastroViewController", bundle: nil).instantiateInitialViewController() as? CadastroViewController
//        return viewDetail!
//    }

}

