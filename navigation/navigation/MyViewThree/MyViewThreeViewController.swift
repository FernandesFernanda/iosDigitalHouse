//
//  MyViewThreeViewController.swift
//  navigation
//
//  Created by Fernanda Fernandes on 22/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonMyThreeModalClick(_ sender: Any) {
           if let myViewThreeModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController {
                      // MODAL
                      present(myViewThreeModal, animated: true, completion: nil)
                  }
       }
       
       
       @IBAction func buttonMyThreePushed(_ sender: Any) {
           if let myViewThreePushed = UIStoryboard(name: "MyViewThreePushed", bundle: nil).instantiateInitialViewController() as? MyViewThreePushedViewController {
           
           // NAVIGATION
           navigationController?.pushViewController(myViewThreePushed, animated: true)
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
