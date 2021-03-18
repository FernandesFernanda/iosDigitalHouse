//
//  MyViewTwoViewController.swift
//  navigation
//
//  Created by Fernanda Fernandes on 22/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class MyViewTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonMyViewTwoModalClick(_ sender: Any) {
        if let myViewTwoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
                   // MODAL
                   present(myViewTwoModal, animated: true, completion: nil)
               }
    }
    
    
    @IBAction func buttonMyTwoPushed(_ sender: Any) {
        if let myViewTwoPushed = UIStoryboard(name: "MyViewTwoPushed", bundle: nil).instantiateInitialViewController() as? MyViewTwoPushedViewController {
        
        // NAVIGATION
        navigationController?.pushViewController(myViewTwoPushed, animated: true)
    
        }
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
