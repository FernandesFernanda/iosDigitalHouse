//
//  MyViewOneViewController.swift
//  navigation
//
//  Created by Fernanda Fernandes on 21/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class MyViewOneViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    @IBAction func buttonMyViewOneModalClick(_ sender: Any) {
        if let myViewOneModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
                   // MODAL
                   present(myViewOneModal, animated: true, completion: nil)
               }
    }
    
    
    @IBAction func buttonMyViewOnePushed(_ sender: Any) {
        if let myViewOnePushed = UIStoryboard(name: "MyViewOnePushed", bundle: nil).instantiateInitialViewController() as? MyViewOnePushedViewController {
        
        // NAVIGATION
        navigationController?.pushViewController(myViewOnePushed, animated: true)
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
}
