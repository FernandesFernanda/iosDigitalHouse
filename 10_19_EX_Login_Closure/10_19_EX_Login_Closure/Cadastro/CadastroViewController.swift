//
//  CadastroViewController.swift
//  10_19_EX_Login_Closure
//
//  Created by Fernanda Fernandes on 19/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldSenha: UITextField!
    
    var onComplete: ((_ email: String, _ senha: String) -> Void)?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionRealizarCadastro () {
        onComplete?(textFieldEmail.text!, textFieldSenha.text!)
        dismiss(animated: true, completion: nil)
    }
    
    func setOnCompletion(onComplete: @escaping (_ email: String, _ senha: String) -> Void) {
        self.onComplete = onComplete
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
